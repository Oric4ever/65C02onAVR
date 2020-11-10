# 65C02onAVR

This is a 65C02 virtual machine for my V-M8 microcomputer (ATmega162 with 64KB of external ram). 
It has only be tested by running two roms: Microsoft's BASIC-65 (as found on KIM-1, Pet Commodore, Tangerine's Microtan...), and its derived version found on the Oric Atmos (Tangerine Basic 1.1).
The emulated 65C02 runs at approximatively 4 MHz on a 16 MHz ATmega162.
I don't intend to put additional work on this virtual machine, because other virtual machines are more useful (i.e give access to a wider library of software, such as the Z80+CP/M virtual machine) or are more interesting (such as the Turbo Modula-2 Reloaded virtual machine).

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

  ATmega162 timing examples for some 6502 instructions:
  
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

