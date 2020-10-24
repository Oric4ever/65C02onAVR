/*
  "Hybrid65C02" emulator by F.Frances, (C) 2019.

  Emulates a 65C02 :
    - all instructions of the 65C02
    - additional COP instruction that calls AVR routines

  The aim is to provide an 8-bit 65x02-like processor with access to 64 KB
  of SRAM space, so this targets ATmega processors with external SRAM (up 
  to 64 KB) such as ATmega161/162/640/1280/2560/1281/2561...

  Caveats:
    - Decimal mode is not implemented
    - the stack is shared between the emulated 65x02 cpu and the host AVR.
      The emulator does not use the stack except when calling AVR routines
      from within the COP instruction, so actually the AVR stack starts from
      the top of the emulated 65C02 stack => care must be taken that the
      cumulated stack size doesn't exceed page 1.
    - interrupts may be serviced *in the middle* of the emulation of a
      single 65x02 instruction, so caution must be taken when reading/writing
      volatile data in the 65x02 code (data that is also read/written in the
      AVR interrupt handlers) => use the TSB and TRB to solve synchronization/
      communication issues between the 65x02 emulated code and the AVR handlers
      or protect critical sections with cli/sei.
    - indirect modes must not use pointer in direct page's location $FF
    - page 0 is translated to another page. This is mandatory as the ATmega
      uses page 0 for its registers and IOs.
    - RTI and RET don't check if return address is in zero page

  Speed: 
    Running the following program within BASIC-65 takes 10 seconds on a 16 MHz
    ATmega162, while the same program takes 40 seconds on a PET Commodore,
    hence a 16 MHz ATmega162 emulates a 4 MHz 6502...

    10 FORI=1TO10000
    20 A=A+I
    30 NEXT

  ATmega162 timing examples:
    NOP                6 cycles
    INX                8 cycles
    PHA                8 cycles
    PLA               10 cycles
    LDA #imm          10 cycles
    LDA direct        12 cycles
    LDA direct,X      13 cycles
    LDA absolute      18 cycles
    LDA absolute,X    19 cycles
    LDA (indirect)    20 cycles
    LDA (indirect,X)  21 cycles
    LDA (indirect),Y  21 cycles
    BEQ relative      11/14 cycles
    JMP absolute      15 cycles
    STA direct        10 cycles
    ADC direct        16 cycles
    ASL absolute      21 cycles
*/
define(ZPAGE,0x03)

/***************************************************************************
 ******** Register definitions and the FETCH macro *************************
 ***************************************************************************/

define(regA,     r16)
define(regX,     r17)
define(regY,     r18)
define(regZ,     r19)
define(flagsNZ,  r20)
define(Carry,    r21)
define(regPSW,   r22)
define(tmp,      r23)
define(operand,  r24)
define(operandH, r25)

define(PC,       X)
define(PCL,      XL)
define(PCH,      XH)
define(Imm,      PC+)
define(Direct,   Y)
define(DirectAddr,YL)
define(DirectPage,YH)
define(EAddr,    Z)
define(EAddrL,   ZL)
define(EAddrH,   ZH)
define(Target,   operand)
define(TargetH,  operandH)

define(SREG,     0x3f)
define(SPH,      0x3e)
define(SPL,      0x3d)

/* define qfetch as following for trace */
/* rjmp trace_and_next */

define(QFETCH,`
    ld   ZL,PC+
    ijmp
')
define(FETCH,`
    ldi  ZH,hi8(pm(OpcodeTable))
    QFETCH
')

/***************************************************************************
 **************************** Addressing Modes Macros **********************
 ***************************************************************************/

define(DirectMode,`
    ld   DirectAddr,PC+
')

define(DirectModeEA,`
    ld   EAddrL,PC+
    mov  EAddrH,DirectPage
')

define(DirectXMode,`
    ld   DirectAddr,PC+
    add  DirectAddr,regX
')

define(DirectYMode,`
    ld   DirectAddr,PC+
    add  DirectAddr,regY
')

define(AbsMode,`
    ld   EAddrL,PC+
    ld   EAddrH,PC+
    tst  EAddrH
    brne 1f
    mov  EAddrH,DirectPage
1:
')

define(AbsXMode,`
    ld   EAddrL,PC+
    ld   EAddrH,PC+
    add  EAddrL,regX
    adc  EAddrH,regZ
    brne 1f
    mov  EAddrH,DirectPage
1:
')

define(AbsYMode,`
    ld   EAddrL,PC+
    ld   EAddrH,PC+
    add  EAddrL,regY
    adc  EAddrH,regZ
    brne 1f
    mov  EAddrH,DirectPage
1:
')

define(IndMode,`
    DirectMode
    ld   EAddrL,Direct+
    ld   EAddrH,Direct
    tst  EAddrH
    brne 1f
    mov  EAddrH,DirectPage
1:
')

define(IndXMode,`
    DirectXMode
    ld   EAddrL,Direct+
    ld   EAddrH,Direct
    tst  EAddrH
    brne 1f
    mov  EAddrH,DirectPage
1:
')

define(IndYMode,`
    DirectMode
    ld   EAddrL,Direct+
    ld   EAddrH,Direct
    add  EAddrL,regY
    adc  EAddrH,regZ
    brne 1f
    mov  EAddrH,DirectPage
1:
')

define(Relative,`
    ld   operand,PC+
')

define(AbsJmp,`
    ld   Target ,PC+
    ld   TargetH,PC
    tst  TargetH
    brne 1f
    mov  TargetH,DirectPage
1:
')

define(AbsXJmp,`
    ld   Target ,PC+
    ld   TargetH,PC
    add  Target ,regX
    adc  TargetH,regZ
    brne 1f
    mov  TargetH,DirectPage
1:
')

define(AbsIndJmp,`
    AbsMode
    ld   Target ,EAddr+
    ld   TargetH,EAddr
    tst  TargetH
    brne 1f
    mov  TargetH,DirectPage
1:
')

/*****************************************************************************
 ************************ ALU flags Macros ***********************************
 *****************************************************************************/

define(bitV,3)
define(bitN,2)
define(bitZ,1)
define(bitC,0)

define(SetZ,`
    in   tmp,SREG
    bst  tmp,bitZ
    bld  flagsNZ,bitZ
')

define(SetNZ,`
    in   flagsNZ,SREG
')

define(SetNZC,`
    in   flagsNZ,SREG
    in   Carry,SREG
')

define(SetNVZC,`
    in   flagsNZ,SREG
    in   Carry,SREG
    bst  flagsNZ,bitV
    bld  regPSW,6
')

define(SetNVZB,`
    in   flagsNZ,SREG
    in   Carry,SREG
    bst  flagsNZ,bitV
    bld  regPSW,6
    inc  Carry
')

define(DestructiveGetCarry,`lsr  Carry')
define(DestructiveGetBorrow,`
    inc  Carry
    lsr  Carry
') 
    
define(CompressPSW,`
    bst  flagsNZ,bitN
    bld  regPSW,7
    bst  flagsNZ,bitZ
    bld  regPSW,1
    bst  Carry,bitC
    bld  regPSW,0
')
define(UncompressPSW,`
    bst  regPSW,7
    bld  flagsNZ,bitN
    bst  regPSW,1
    bld  flagsNZ,bitZ
    bst  regPSW,0
    bld  Carry,bitC
')

/*****************************************************************************
 ********** Macros for loading and storing from/to memory ********************
 *****************************************************************************/

define(LoadReg,`
    ld   $1,$2
    tst  $1
    SetNZ
')

define(Op_LDA, `LoadReg(regA,$1)')
define(Op_LDX, `LoadReg(regX,$1)')
define(Op_LDY, `LoadReg(regY,$1)')

define(StoreReg,`st   $1,$2')

define(Op_STA, `StoreReg($1,regA)')
define(Op_STX, `StoreReg($1,regX)')
define(Op_STY, `StoreReg($1,regY)')
define(Op_STZ, `StoreReg($1,regZ)')

/*****************************************************************************
 ********************** Arithmetic and logic Macros **************************
 *****************************************************************************/

define(Op_BIT,`
    ld   operand,$1
    bst  operand,7
    bld  flagsNZ,bitN
    bst  operand,6
    bld  regPSW,6
    and  operand,regA
    SetZ
')

define(Op_AND,`
    ld   operand,$1
    and  regA,operand
    SetNZ
')

define(Op_ORA,`
    ld   operand,$1
    or   regA,operand
    SetNZ
')

define(Op_EOR,`
    ld   operand,$1
    eor  regA,operand
    SetNZ
')

define(Op_ADC,`
    ld   operand,$1
    DestructiveGetCarry
    adc  regA,operand
    SetNVZC
')

define(Op_SBC,`
    ld   operand,$1
    DestructiveGetBorrow
    sez                     ; CAVEAT : sbc
    sbc  regA,operand
    SetNVZB
')

define(Op_CMP,`
    ld   operand,$1
    cp   regA,operand
    SetNVZB
')

define(Op_CPX,`
    ld   operand,$1
    cp   regX,operand
    SetNVZB
')

define(Op_CPY,`
    ld   operand,$1
    cp   regY,operand
    SetNVZB
')

/*****************************************************************************
 ********************** Register operations Macros ***************************
 *****************************************************************************/

define(Op_ASL_A,`
    lsl  regA
    SetNZC
')

define(Op_LSR_A,`
    lsr  regA
    SetNZC
')

define(Op_ROL_A,`
    DestructiveGetCarry
    rol  regA
    SetNZC
')

define(Op_ROR_A,`
    DestructiveGetCarry
    ror  regA
    SetNZC
')

define(Op_INC_A,`
    inc  regA
    SetNZ
')

define(Op_INX,`
    inc  regX
    SetNZ
')

define(Op_INY,`
    inc  regY
    SetNZ
')

define(Op_DEC_A,`
    dec  regA
    SetNZ
')

define(Op_DEX,`
    dec  regX
    SetNZ
')

define(Op_DEY,`
    dec  regY
    SetNZ
')
/*****************************************************************************
 ********************** Read-Modify-Write instructions Macros ****************
 *****************************************************************************/

define(Op_TSB,` 
    in   operandH,SREG
    cli                 ; LAS instruction not available on AVR-5 core
    ld   operand,EAddr
    mov  tmp,operand
    or   operand,regA
    st   EAddr,operand
    out  SREG,operandH
    and  tmp,regA
    SetZ
')
    
define(Op_TRB,`
    in   operandH,SREG
    cli                 ; LAC instruction not available on AVR-5 core
    ld   operand,EAddr
    mov  tmp,operand
    or   operand,regA
    eor  operand,regA
    st   EAddr,operand
    out  SREG,operandH
    and  tmp,regA
    SetZ
')
    
define(Op_ASL,`
    ld   operand,$1
    lsl  operand
    st   $1,operand
    SetNZC
')

define(Op_LSR,`
    ld   operand,$1
    lsr  operand
    st   $1,operand
    SetNZC
')

define(Op_ROL,`
    ld   operand,$1
    DestructiveGetCarry
    rol  operand
    st   $1,operand
    SetNZC
')

define(Op_ROR,`
    ld   operand,$1
    DestructiveGetCarry
    ror  operand
    st   $1,operand
    SetNZC
')

define(Op_INC,`
    ld   operand,$1
    inc  operand
    st   $1,operand
    SetNZ
')

define(Op_DEC,`
    ld   operand,$1
    dec  operand
    st   $1,operand
    SetNZ
')

/*****************************************************************************
 ********************** Bit operations Macros ********************************
 *****************************************************************************/

define(SetBit,`
    ld   operand,Direct
    sbr  operand,$1
    st   Direct,operand
')
define(ResetBit,`
    ld   operand,Direct
    cbr  operand,$1
    st   Direct,operand
')

define(Op_SMB0,`SetBit(1)')
define(Op_SMB1,`SetBit(2)')
define(Op_SMB2,`SetBit(4)')
define(Op_SMB3,`SetBit(8)')
define(Op_SMB4,`SetBit(16)')
define(Op_SMB5,`SetBit(32)')
define(Op_SMB6,`SetBit(64)')
define(Op_SMB7,`SetBit(128)')

define(Op_RMB0,`ResetBit(1)')
define(Op_RMB1,`ResetBit(2)')
define(Op_RMB2,`ResetBit(4)')
define(Op_RMB3,`ResetBit(8)')
define(Op_RMB4,`ResetBit(16)')
define(Op_RMB5,`ResetBit(32)')
define(Op_RMB6,`ResetBit(64)')
define(Op_RMB7,`ResetBit(128)')

define(Op_BBS0,BranchOnBitSet(1))
define(Op_BBS1,BranchOnBitSet(2))
define(Op_BBS2,BranchOnBitSet(4))
define(Op_BBS3,BranchOnBitSet(8))
define(Op_BBS4,BranchOnBitSet(16))
define(Op_BBS5,BranchOnBitSet(32))
define(Op_BBS6,BranchOnBitSet(64))
define(Op_BBS7,BranchOnBitSet(128))

define(Op_BBR0,BranchOnBitReset(1))
define(Op_BBR1,BranchOnBitReset(2))
define(Op_BBR2,BranchOnBitReset(4))
define(Op_BBR3,BranchOnBitReset(8))
define(Op_BBR4,BranchOnBitReset(16))
define(Op_BBR5,BranchOnBitReset(32))
define(Op_BBR6,BranchOnBitReset(64))
define(Op_BBR7,BranchOnBitReset(128))

/*****************************************************************************
 ********************** Stack operations Macros ******************************
 *****************************************************************************/

define(Op_PHA, `push regA')
define(Op_PHX, `push regX')
define(Op_PHY, `push regY')
define(Op_PHP,`
    CompressPSW
    push regPSW
')

define(PullReg,`
    pop  $1
    tst  $1
    SetNZ
')
define(Op_PLA, `PullReg(regA)')
define(Op_PLX, `PullReg(regX)')
define(Op_PLY, `PullReg(regY)')
define(Op_PLP,`
    pop  regPSW
    UncompressPSW
')

define(Op_COP,`
    ld   operand,PC+
    call trap
')

define(Op_BRK,`
    CompressPSW
    push PCH
    push PCL
    push regPSW
    ldi  EAddrL,0xFE
    ldi  EAddrH,0xFF
    ld   PCL,EAddr+
    ld   PCH,EAddr
    tst  PCH
    brne 1f
    mov  PCH,DirectPage
1:  Op_CLD
    Op_SEI
')
define(Op_RTI,`
    pop  regPSW
    pop  PCL
    pop  PCH
    UncompressPSW
')

define(Op_RTS,`
    pop  PCL
    pop  PCH
    adiw PC,1
')

define(Op_JSR,`
    push PCH
    push PCL
    movw PC,Target
')

/*****************************************************************************
 ********************** Branch operations Macros *****************************
 *****************************************************************************/

define(Op_JMP,`
    movw PC,Target
')
define(Branch,`
    add  PCL,operand
    adc  PCH,regZ
    sbrc operand,7
    subi PCH,1
')
define(CondBranch,`
    rjmp 1f
    Branch
1:
')
define(BranchOnBitSet,`
    andi operand,$1
    Relative
    breq 1f
    Branch
1:
')
define(BranchOnBitReset,`
    andi operand,$1
    Relative
    brne 1f
    Branch
1:
')

define(Op_BRA,`
    Branch
')
define(Op_BEQ,`
    sbrs flagsNZ,bitZ
    CondBranch
')
define(Op_BVS,`
    sbrs regPSW,6
    CondBranch
')
define(Op_BCS,`
    sbrs Carry,bitC
    CondBranch
')
define(Op_BMI,`
    sbrs flagsNZ,bitN
    CondBranch
')
    
define(Op_BNE,`
    sbrc flagsNZ,bitZ
    CondBranch
')
define(Op_BVC,`
    sbrc regPSW,6
    CondBranch
')
define(Op_BCC,`
    sbrc Carry,bitC
    CondBranch
')
define(Op_BPL,`
    sbrc flagsNZ,bitN
    CondBranch
')
 
/*****************************************************************************
 ********************** Register transfers Macros ****************************
 *****************************************************************************/

define(TransferReg,`
    mov  $2,$1
    tst  $2
    SetNZ
')
define(Op_TAX, `TransferReg(regA,regX)')
define(Op_TXA, `TransferReg(regX,regA)')
define(Op_TAY, `TransferReg(regA,regY)')
define(Op_TYA, `TransferReg(regY,regA)')
define(Op_TXS, `out SPL,regX')
define(Op_TSX, `in  regX,SPL')

/*****************************************************************************
 ********************** Setting/clearing flags Macros ************************
 *****************************************************************************/

define(Op_CLC, `
    clr  Carry
')
define(Op_CLI,`
    cbr  regPSW,2
    sei
')
define(Op_CLV,`
    cbr  regPSW,6
')
define(Op_CLD,`
    cbr regPSW,3
')
define(Op_SEC,`
    ser  Carry
')
define(Op_SEI,`
    sbr  regPSW,2
    cli
')
define(Op_SED,`
    sbr  regPSW,3
')

/*****************************************************************************
 ****************** Special instructions *************************************
 *****************************************************************************/

define(Op_NOP,`nop')
define(Op_WAI,`sleep')
define(Op_STP,`
1:  sleep
    rjmp 1b
')

/*****************************************************************************
 ****************** Instruction set ******************************************
 *****************************************************************************/

    .section .text

/*****************************************************************************
 ****************** Reserved opcodes  ****************************************
 *****************************************************************************/
Op_NOP3:
Op_5c:
Op_dc:
Op_fc:
    adiw PC,1
Op_NOP2:
Op_42:
Op_62:
Op_82:
Op_c2:
Op_e2:
Op_44:
Op_d4:
Op_54:
Op_22:
Op_f4:
    adiw PC,1
Op_NOP1:
Op_03:
Op_13:
Op_23:
Op_33:
Op_43:
Op_53:
Op_63:
Op_73:
Op_83:
Op_93:
Op_a3:
Op_b3:
Op_c3:
Op_d3:
Op_e3:
Op_f3:
Op_0b:
Op_1b:
Op_2b:
Op_3b:
Op_4b:
Op_5b:
Op_6b:
Op_7b:
Op_8b:
Op_9b:
Op_ab:
Op_bb:
Op_eb:
Op_fb:
    QFETCH

/*****************************************************************************
 ****************** All the instructions  ************************************
 *****************************************************************************/

Op_00:              Op_BRK               FETCH
Op_10: Relative     Op_BPL              QFETCH
Op_20: AbsJmp       Op_JSR(EAddr)        FETCH
Op_30: Relative     Op_BMI              QFETCH
Op_40:              Op_RTI              QFETCH
Op_50: Relative     Op_BVC              QFETCH
Op_60:              Op_RTS              QFETCH
Op_70: Relative     Op_BVS              QFETCH
Op_80: Relative     Op_BRA              QFETCH
Op_90: Relative     Op_BCC              QFETCH
Op_a0:              Op_LDY(Imm)         QFETCH
Op_b0: Relative     Op_BCS              QFETCH
Op_c0:              Op_CPY(Imm)         QFETCH
Op_d0: Relative     Op_BNE              QFETCH
Op_e0:              Op_CPX(Imm)         QFETCH
Op_f0: Relative     Op_BEQ              QFETCH

Op_01: IndXMode     Op_ORA(EAddr)        FETCH
Op_11: IndYMode     Op_ORA(EAddr)        FETCH
Op_21: IndXMode     Op_AND(EAddr)        FETCH
Op_31: IndYMode     Op_AND(EAddr)        FETCH
Op_41: IndXMode     Op_EOR(EAddr)        FETCH
Op_51: IndYMode     Op_EOR(EAddr)        FETCH
Op_61: IndXMode     Op_ADC(EAddr)        FETCH
Op_71: IndYMode     Op_ADC(EAddr)        FETCH
Op_81: IndXMode     Op_STA(EAddr)        FETCH
Op_91: IndYMode     Op_STA(EAddr)        FETCH
Op_a1: IndXMode     Op_LDA(EAddr)        FETCH
Op_b1: IndYMode     Op_LDA(EAddr)        FETCH
Op_c1: IndXMode     Op_CMP(EAddr)        FETCH
Op_d1: IndYMode     Op_CMP(EAddr)        FETCH
Op_e1: IndXMode     Op_SBC(EAddr)        FETCH
Op_f1: IndYMode     Op_SBC(EAddr)        FETCH

Op_02:              Op_COP              QFETCH
Op_12: IndMode      Op_ORA(EAddr)        FETCH
Op_32: IndMode      Op_AND(EAddr)        FETCH
Op_52: IndMode      Op_EOR(EAddr)        FETCH
Op_72: IndMode      Op_ADC(EAddr)        FETCH
Op_92: IndMode      Op_STA(EAddr)        FETCH
Op_a2:              Op_LDX(Imm)         QFETCH
Op_b2: IndMode      Op_LDA(EAddr)        FETCH
Op_d2: IndMode      Op_CMP(EAddr)        FETCH
Op_f2: IndMode      Op_SBC(EAddr)        FETCH


Op_04: DirectModeEA Op_TSB(EAddr)        FETCH
Op_14: DirectModeEA Op_TRB(EAddr)        FETCH
Op_24: DirectMode   Op_BIT(Direct)      QFETCH
Op_34: DirectXMode  Op_BIT(Direct)      QFETCH
Op_64: DirectMode   Op_STZ(Direct)      QFETCH
Op_74: DirectXMode  Op_STZ(Direct)      QFETCH
Op_84: DirectMode   Op_STY(Direct)      QFETCH
Op_94: DirectXMode  Op_STY(Direct)      QFETCH
Op_a4: DirectMode   Op_LDY(Direct)      QFETCH
Op_b4: DirectXMode  Op_LDY(Direct)      QFETCH
Op_c4: DirectMode   Op_CPY(Direct)      QFETCH
Op_e4: DirectMode   Op_CPX(Direct)      QFETCH

Op_05: DirectMode   Op_ORA(Direct)      QFETCH
Op_15: DirectXMode  Op_ORA(Direct)      QFETCH
Op_25: DirectMode   Op_AND(Direct)      QFETCH
Op_35: DirectXMode  Op_AND(Direct)      QFETCH
Op_45: DirectMode   Op_EOR(Direct)      QFETCH
Op_55: DirectXMode  Op_EOR(Direct)      QFETCH
Op_65: DirectMode   Op_ADC(Direct)      QFETCH
Op_75: DirectXMode  Op_ADC(Direct)      QFETCH
Op_85: DirectMode   Op_STA(Direct)      QFETCH
Op_95: DirectXMode  Op_STA(Direct)      QFETCH
Op_a5: DirectMode   Op_LDA(Direct)      QFETCH
Op_b5: DirectXMode  Op_LDA(Direct)      QFETCH
Op_c5: DirectMode   Op_CMP(Direct)      QFETCH
Op_d5: DirectXMode  Op_CMP(Direct)      QFETCH
Op_e5: DirectMode   Op_SBC(Direct)      QFETCH
Op_f5: DirectXMode  Op_SBC(Direct)      QFETCH

Op_06: DirectMode   Op_ASL(Direct)      QFETCH
Op_16: DirectXMode  Op_ASL(Direct)      QFETCH
Op_26: DirectMode   Op_ROL(Direct)      QFETCH
Op_36: DirectXMode  Op_ROL(Direct)      QFETCH
Op_46: DirectMode   Op_LSR(Direct)      QFETCH
Op_56: DirectXMode  Op_LSR(Direct)      QFETCH
Op_66: DirectMode   Op_ROR(Direct)      QFETCH
Op_76: DirectXMode  Op_ROR(Direct)      QFETCH
Op_86: DirectMode   Op_STX(Direct)      QFETCH
Op_96: DirectYMode  Op_STX(Direct)      QFETCH
Op_a6: DirectMode   Op_LDX(Direct)      QFETCH
Op_b6: DirectYMode  Op_LDX(Direct)      QFETCH
Op_c6: DirectMode   Op_DEC(Direct)      QFETCH
Op_d6: DirectXMode  Op_DEC(Direct)      QFETCH
Op_e6: DirectMode   Op_INC(Direct)      QFETCH
Op_f6: DirectXMode  Op_INC(Direct)      QFETCH

Op_07: DirectMode   Op_RMB0             QFETCH
Op_17: DirectMode   Op_RMB1             QFETCH
Op_27: DirectMode   Op_RMB2             QFETCH
Op_37: DirectMode   Op_RMB3             QFETCH
Op_47: DirectMode   Op_RMB4             QFETCH
Op_57: DirectMode   Op_RMB5             QFETCH
Op_67: DirectMode   Op_RMB6             QFETCH
Op_77: DirectMode   Op_RMB7             QFETCH
Op_87: DirectMode   Op_SMB0             QFETCH
Op_97: DirectMode   Op_SMB1             QFETCH
Op_a7: DirectMode   Op_SMB2             QFETCH
Op_b7: DirectMode   Op_SMB3             QFETCH
Op_c7: DirectMode   Op_SMB4             QFETCH
Op_d7: DirectMode   Op_SMB5             QFETCH
Op_e7: DirectMode   Op_SMB6             QFETCH
Op_f7: DirectMode   Op_SMB7             QFETCH

Op_08:              Op_PHP              QFETCH
Op_18:              Op_CLC              QFETCH
Op_28:              Op_PLP              QFETCH
Op_38:              Op_SEC              QFETCH
Op_48:              Op_PHA              QFETCH
Op_58:              Op_CLI              QFETCH
Op_68:              Op_PLA              QFETCH
Op_78:              Op_SEI              QFETCH
Op_88:              Op_DEY              QFETCH
Op_98:              Op_TYA              QFETCH
Op_a8:              Op_TAY              QFETCH
Op_b8:              Op_CLV              QFETCH
Op_c8:              Op_INY              QFETCH
Op_d8:              Op_CLD              QFETCH
Op_e8:              Op_INX              QFETCH
Op_f8:              Op_SED              QFETCH

/* put these in the middle so that relative jumps do not overflow */
trace_and_next:
 push r16
 call send_space
 call send_space
 call send_space
 call send_space
 call send_space
 call send_space
 
 mov  r16,DirectPage
 call send_hex
 mov  r16,DirectAddr
 call send_hex
 ldi  r16,'='
 call uart_send
 ld   r16,Direct
 call send_hex
 call send_space
 
 mov  r16,EAddrH
 call send_hex
 mov  r16,EAddrL
 call send_hex
 ldi  r16,'='
 call uart_send
 ld   r16,Z
 call send_hex
 call send_space

 call send_space
 ldi  r16,'A'
 call uart_send
 ldi  r16,'='
 call uart_send
 pop  r16
 push r16
 call send_hex      ; write regA
 call send_space

 ldi  r16,'X'
 call uart_send
 ldi  r16,'='
 call uart_send
 mov  r16,regX      ; write regX
 call send_hex
 call send_space

 ldi  r16,'Y'
 call uart_send
 ldi  r16,'='
 call uart_send
 mov  r16,regY       ; write regY
 call send_hex
 call send_space

 ldi  r16,'-'
 sbrc flagsNZ,bitN
 ldi  r16,'N'
 call uart_send

 ldi  r16,'-'
 sbrc regPSW,6
 ldi  r16,'V'
 call uart_send

 ldi  r16,'-'
 sbrc flagsNZ,bitZ
 ldi  r16,'Z'
 call uart_send

 ldi  r16,'-'
 sbrc Carry,bitC
 ldi  r16,'C'
 call uart_send

 call send_newline

 mov  r16,PCH
 call send_hex
 mov  r16,PCL
 call send_hex
 call send_space

    ld   ZL,PC+

 mov  r16,ZL
 call send_hex
 call send_space

 ld   r16,PC
 call send_hex
 call send_newline

 pop  r16
    ijmp

    .global start6502
start6502:
    ldi  regZ,0
    ldi  DirectPage,ZPAGE
    ldi  operand,0xFF
    ldi  operandH,1
    out  SPL,operand
    out  SPH,operandH
reset6502:
    ldi  regPSW,0x34
    ldi  EAddrL,0xFC
    ldi  EAddrH,0xFF
    ld   PCL,EAddr+
    ld   PCH,EAddr
    Op_CLD
    Op_SEI
    FETCH

    .align 9        ; 2^9 to be sure the OpcodeTable starts on a code page boundary
OpcodeTable:
    rjmp Op_00
    rjmp Op_01
    rjmp Op_02
    rjmp Op_03
    rjmp Op_04
    rjmp Op_05
    rjmp Op_06
    rjmp Op_07
    rjmp Op_08
    rjmp Op_09
    rjmp Op_0a
    rjmp Op_0b
    rjmp Op_0c
    rjmp Op_0d
    rjmp Op_0e
    rjmp Op_0f

    rjmp Op_10
    rjmp Op_11
    rjmp Op_12
    rjmp Op_13
    rjmp Op_14
    rjmp Op_15
    rjmp Op_16
    rjmp Op_17
    rjmp Op_18
    rjmp Op_19
    rjmp Op_1a
    rjmp Op_1b
    rjmp Op_1c
    rjmp Op_1d
    rjmp Op_1e
    rjmp Op_1f

    rjmp Op_20
    rjmp Op_21
    rjmp Op_22
    rjmp Op_23
    rjmp Op_24
    rjmp Op_25
    rjmp Op_26
    rjmp Op_27
    rjmp Op_28
    rjmp Op_29
    rjmp Op_2a
    rjmp Op_2b
    rjmp Op_2c
    rjmp Op_2d
    rjmp Op_2e
    rjmp Op_2f

    rjmp Op_30
    rjmp Op_31
    rjmp Op_32
    rjmp Op_33
    rjmp Op_34
    rjmp Op_35
    rjmp Op_36
    rjmp Op_37
    rjmp Op_38
    rjmp Op_39
    rjmp Op_3a
    rjmp Op_3b
    rjmp Op_3c
    rjmp Op_3d
    rjmp Op_3e
    rjmp Op_3f

    rjmp Op_40
    rjmp Op_41
    rjmp Op_42
    rjmp Op_43
    rjmp Op_44
    rjmp Op_45
    rjmp Op_46
    rjmp Op_47
    rjmp Op_48
    rjmp Op_49
    rjmp Op_4a
    rjmp Op_4b
    rjmp Op_4c
    rjmp Op_4d
    rjmp Op_4e
    rjmp Op_4f

    rjmp Op_50
    rjmp Op_51
    rjmp Op_52
    rjmp Op_53
    rjmp Op_54
    rjmp Op_55
    rjmp Op_56
    rjmp Op_57
    rjmp Op_58
    rjmp Op_59
    rjmp Op_5a
    rjmp Op_5b
    rjmp Op_5c
    rjmp Op_5d
    rjmp Op_5e
    rjmp Op_5f

    rjmp Op_60
    rjmp Op_61
    rjmp Op_62
    rjmp Op_63
    rjmp Op_64
    rjmp Op_65
    rjmp Op_66
    rjmp Op_67
    rjmp Op_68
    rjmp Op_69
    rjmp Op_6a
    rjmp Op_6b
    rjmp Op_6c
    rjmp Op_6d
    rjmp Op_6e
    rjmp Op_6f

    rjmp Op_70
    rjmp Op_71
    rjmp Op_72
    rjmp Op_73
    rjmp Op_74
    rjmp Op_75
    rjmp Op_76
    rjmp Op_77
    rjmp Op_78
    rjmp Op_79
    rjmp Op_7a
    rjmp Op_7b
    rjmp Op_7c
    rjmp Op_7d
    rjmp Op_7e
    rjmp Op_7f

    rjmp Op_80
    rjmp Op_81
    rjmp Op_82
    rjmp Op_83
    rjmp Op_84
    rjmp Op_85
    rjmp Op_86
    rjmp Op_87
    rjmp Op_88
    rjmp Op_89
    rjmp Op_8a
    rjmp Op_8b
    rjmp Op_8c
    rjmp Op_8d
    rjmp Op_8e
    rjmp Op_8f

    rjmp Op_90
    rjmp Op_91
    rjmp Op_92
    rjmp Op_93
    rjmp Op_94
    rjmp Op_95
    rjmp Op_96
    rjmp Op_97
    rjmp Op_98
    rjmp Op_99
    rjmp Op_9a
    rjmp Op_9b
    rjmp Op_9c
    rjmp Op_9d
    rjmp Op_9e
    rjmp Op_9f

    rjmp Op_a0
    rjmp Op_a1
    rjmp Op_a2
    rjmp Op_a3
    rjmp Op_a4
    rjmp Op_a5
    rjmp Op_a6
    rjmp Op_a7
    rjmp Op_a8
    rjmp Op_a9
    rjmp Op_aa
    rjmp Op_ab
    rjmp Op_ac
    rjmp Op_ad
    rjmp Op_ae
    rjmp Op_af

    rjmp Op_b0
    rjmp Op_b1
    rjmp Op_b2
    rjmp Op_b3
    rjmp Op_b4
    rjmp Op_b5
    rjmp Op_b6
    rjmp Op_b7
    rjmp Op_b8
    rjmp Op_b9
    rjmp Op_ba
    rjmp Op_bb
    rjmp Op_bc
    rjmp Op_bd
    rjmp Op_be
    rjmp Op_bf

    rjmp Op_c0
    rjmp Op_c1
    rjmp Op_c2
    rjmp Op_c3
    rjmp Op_c4
    rjmp Op_c5
    rjmp Op_c6
    rjmp Op_c7
    rjmp Op_c8
    rjmp Op_c9
    rjmp Op_ca
    rjmp Op_cb
    rjmp Op_cc
    rjmp Op_cd
    rjmp Op_ce
    rjmp Op_cf

    rjmp Op_d0
    rjmp Op_d1
    rjmp Op_d2
    rjmp Op_d3
    rjmp Op_d4
    rjmp Op_d5
    rjmp Op_d6
    rjmp Op_d7
    rjmp Op_d8
    rjmp Op_d9
    rjmp Op_da
    rjmp Op_db
    rjmp Op_dc
    rjmp Op_dd
    rjmp Op_de
    rjmp Op_df

    rjmp Op_e0
    rjmp Op_e1
    rjmp Op_e2
    rjmp Op_e3
    rjmp Op_e4
    rjmp Op_e5
    rjmp Op_e6
    rjmp Op_e7
    rjmp Op_e8
    rjmp Op_e9
    rjmp Op_ea
    rjmp Op_eb
    rjmp Op_ec
    rjmp Op_ed
    rjmp Op_ee
    rjmp Op_ef

    rjmp Op_f0
    rjmp Op_f1
    rjmp Op_f2
    rjmp Op_f3
    rjmp Op_f4
    rjmp Op_f5
    rjmp Op_f6
    rjmp Op_f7
    rjmp Op_f8
    rjmp Op_f9
    rjmp Op_fa
    rjmp Op_fb
    rjmp Op_fc
    rjmp Op_fd
    rjmp Op_fe
    rjmp Op_ff

Op_09:              Op_ORA(Imm)         QFETCH
Op_19: AbsYMode     Op_ORA(EAddr)        FETCH
Op_29:              Op_AND(Imm)         QFETCH
Op_39: AbsYMode     Op_AND(EAddr)        FETCH
Op_49:              Op_EOR(Imm)         QFETCH
Op_59: AbsYMode     Op_EOR(EAddr)        FETCH
Op_69:              Op_ADC(Imm)         QFETCH
Op_79: AbsYMode     Op_ADC(EAddr)        FETCH
Op_89:              Op_BIT(Imm)         QFETCH
Op_99: AbsYMode     Op_STA(EAddr)        FETCH
Op_a9:              Op_LDA(Imm)         QFETCH
Op_b9: AbsYMode     Op_LDA(EAddr)        FETCH
Op_c9:              Op_CMP(Imm)         QFETCH
Op_d9: AbsYMode     Op_CMP(EAddr)        FETCH
Op_e9:              Op_SBC(Imm)         QFETCH
Op_f9: AbsYMode     Op_SBC(EAddr)        FETCH

Op_0a:              Op_ASL_A            QFETCH
Op_1a:              Op_INC_A            QFETCH
Op_2a:              Op_ROL_A            QFETCH
Op_3a:              Op_DEC_A            QFETCH
Op_4a:              Op_LSR_A            QFETCH
Op_5a:              Op_PHY              QFETCH
Op_6a:              Op_ROR_A            QFETCH
Op_7a:              Op_PLY              QFETCH
Op_8a:              Op_TXA              QFETCH
Op_9a:              Op_TXS              QFETCH
Op_aa:              Op_TAX              QFETCH
Op_ba:              Op_TSX              QFETCH
Op_ca:              Op_DEX              QFETCH
Op_da:              Op_PHX              QFETCH
Op_ea:              Op_NOP              QFETCH
Op_fa:              Op_PLX              QFETCH

Op_cb:              Op_WAI              QFETCH
Op_db:              Op_STP              QFETCH

Op_0c: AbsMode      Op_TSB(EAddr)        FETCH
Op_1c: AbsMode      Op_TRB(EAddr)        FETCH
Op_2c: AbsMode      Op_BIT(EAddr)        FETCH
Op_3c: AbsXMode     Op_BIT(EAddr)        FETCH
Op_4c: AbsJmp       Op_JMP(EAddr)        FETCH
Op_6c: AbsIndJmp    Op_JMP(EAddr)        FETCH
Op_7c: AbsXJmp      Op_JMP(EAddr)        FETCH
Op_8c: AbsMode      Op_STY(EAddr)        FETCH
Op_9c: AbsMode      Op_STZ(EAddr)        FETCH
Op_ac: AbsMode      Op_LDY(EAddr)        FETCH
Op_bc: AbsXMode     Op_LDY(EAddr)        FETCH
Op_cc: AbsMode      Op_CPY(EAddr)        FETCH
Op_ec: AbsMode      Op_CPX(EAddr)        FETCH

Op_0d: AbsMode      Op_ORA(EAddr)        FETCH
Op_1d: AbsXMode     Op_ORA(EAddr)        FETCH
Op_2d: AbsMode      Op_AND(EAddr)        FETCH
Op_3d: AbsXMode     Op_AND(EAddr)        FETCH
Op_4d: AbsMode      Op_EOR(EAddr)        FETCH
Op_5d: AbsXMode     Op_EOR(EAddr)        FETCH
Op_6d: AbsMode      Op_ADC(EAddr)        FETCH
Op_7d: AbsXMode     Op_ADC(EAddr)        FETCH
Op_8d: AbsMode      Op_STA(EAddr)        FETCH
Op_9d: AbsXMode     Op_STA(EAddr)        FETCH
Op_ad: AbsMode      Op_LDA(EAddr)        FETCH
Op_bd: AbsXMode     Op_LDA(EAddr)        FETCH
Op_cd: AbsMode      Op_CMP(EAddr)        FETCH
Op_dd: AbsXMode     Op_CMP(EAddr)        FETCH
Op_ed: AbsMode      Op_SBC(EAddr)        FETCH
Op_fd: AbsXMode     Op_SBC(EAddr)        FETCH

Op_0e: AbsMode      Op_ASL(EAddr)        FETCH
Op_1e: AbsXMode     Op_ASL(EAddr)        FETCH
Op_2e: AbsMode      Op_ROL(EAddr)        FETCH
Op_3e: AbsXMode     Op_ROL(EAddr)        FETCH
Op_4e: AbsMode      Op_LSR(EAddr)        FETCH
Op_5e: AbsXMode     Op_LSR(EAddr)        FETCH
Op_6e: AbsMode      Op_ROR(EAddr)        FETCH
Op_7e: AbsXMode     Op_ROR(EAddr)        FETCH
Op_8e: AbsMode      Op_STX(EAddr)        FETCH
Op_9e: AbsXMode     Op_STZ(EAddr)        FETCH
Op_ae: AbsMode      Op_LDX(EAddr)        FETCH
Op_be: AbsYMode     Op_LDX(EAddr)        FETCH
Op_ce: AbsMode      Op_DEC(EAddr)        FETCH
Op_de: AbsXMode     Op_DEC(EAddr)        FETCH
Op_ee: AbsMode      Op_INC(EAddr)        FETCH
Op_fe: AbsXMode     Op_INC(EAddr)        FETCH

Op_0f: DirectMode   Op_BBR0(Direct)     QFETCH
Op_1f: DirectMode   Op_BBR1(Direct)     QFETCH                      
Op_2f: DirectMode   Op_BBR2(Direct)     QFETCH
Op_3f: DirectMode   Op_BBR3(Direct)     QFETCH
Op_4f: DirectMode   Op_BBR4(Direct)     QFETCH
Op_5f: DirectMode   Op_BBR5(Direct)     QFETCH
Op_6f: DirectMode   Op_BBR6(Direct)     QFETCH                      
Op_7f: DirectMode   Op_BBR7(Direct)     QFETCH                      
Op_8f: DirectMode   Op_BBS0(Direct)     QFETCH
Op_9f: DirectMode   Op_BBS1(Direct)     QFETCH
Op_af: DirectMode   Op_BBS2(Direct)     QFETCH
Op_bf: DirectMode   Op_BBS3(Direct)     QFETCH
Op_cf: DirectMode   Op_BBS4(Direct)     QFETCH
Op_df: DirectMode   Op_BBS5(Direct)     QFETCH
Op_ef: DirectMode   Op_BBS6(Direct)     QFETCH
Op_ff: DirectMode   Op_BBS7(Direct)     QFETCH


