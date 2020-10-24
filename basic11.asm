MOVEPARAMS	equ $0C
SRCPTR		equ $0C
DSTPTR		equ $0E
HRS_CURSOR	equ $10
TXTLIN_ADDR	equ $12
SOUND_DATA	equ $14
INPUT_FLAG	equ $17
KEYW_ADDR	equ $18
READY_VECT	equ $1A
DOKE_ADDR	equ $1D
LINE_ADDR	equ $1F
USRVECT		equ $21
TERMINATOR1	equ $24
TERMINATOR2	equ $25
LINESIZE	equ $26
VARFOUND	equ $27
STR_FLAG	equ $28
INT_FLAG	equ $29
KEYW_FLAG	equ $2A
ARRAY_FLAG	equ $2B
INPUTCODE	equ $2C
COMPARECODE	equ $2D
KBD_DISABLE	equ $2E
CONVERT_TMP	equ $2F
COLUMN_COUNT	equ $30
ENTRYLINE	equ $31
PRINT_WIDTH	equ $31
MAXTAB		equ $32
TMP		equ $33
ENTRYBUF	equ $35
TXTBUFLEN	equ 80

STK_PTR		equ $85
OLD_STK_PTR	equ $86
DESC_STACK	equ $88
PTR1		equ $91
PTR2		equ $93
ACC3		equ $95
BASTXT		equ $9A
VARS		equ $9C
ARRAYS		equ $9E
ARRAY_END	equ $A0
STRING_BOTTOM	equ $A2

TMP_STR		equ $A4
HIMEM_PTR	equ $A6
LINENUM		equ $A8
CONTLINE	equ $AA
LAST_TXTPTR	equ $AC
SAVELINE	equ $AE

DATAPTR		equ $B0
DATAPTR2	equ $B2
VARNAME1	equ $B4
VARNAME2	equ $B5
VAR_ADDR	equ $B6
VAR_ADDR2	equ $B8
TXTPTR_SAV2	equ $BA
OPCOMP_CODE	equ $BC
FN_EVAL		equ $BD
STRWORK		equ $BF

STRLEN		equ $C2
FCT_VECT	equ $C3
ACC4		equ $C6
ACC5		equ $CB
LINESEARCH	equ $CE

ACC1		equ $D0
EVAL_WORK	equ $D6
ACC1_JUSTIF	equ $D7
ACC2		equ $D8
PROD_SIGN	equ $DE
ACC1_EXT	equ $DF

SAVETXTPTR	equ $E0
NEXTCHAR	equ $E2
TXTCHAR		equ $E8
TXTPTR		equ $E9
RND_VALUE	equ $FA
NUM_BUFFER	equ $FF

STACK		equ $0100

WORK1		equ $0200
WORK2		equ $0201
WORK3		equ $0202
WORK4		equ $0203
WORK5		equ $0204
WORK6		equ $0205
KBD_CODE	equ $0208
KBD_CTLCODE	equ $0209
KBD_COLPATTERN	equ $020A
KBD_CTLCOLPATTERN	equ $020B
KBD_UPCASEFLAG	equ $020C
KBD_COLCNT	equ $020D
KBD_REPEATCNT	equ $020E

KBD_WORK1	equ $0210
KBD_WORK2	equ $0211
FB_CODE		equ $0212
PATTERNVAL	equ $0213
PATTERNWORK	equ $0214
HRS_VAL		equ $0215
HRS_ADR_SAVE	equ $0216
PATTERN_SAVE	equ $0218
HRS_XCOORD	equ $0219
HRS_YCOORD	equ $021A
XCIRCLE		equ $021B
YCIRCLE		equ $021D
HIRESFLAG	equ $021F

RAMSIZEFLAG	equ $0220
VDU_VECT	equ $0238
KBD_VECT	equ $023B
PRINTER_VECT	equ $023E
STATUS_VECT	equ $0241
IRQ_VECT	equ $0244
NMI_VECT	equ $0247
RTI_VECT	equ $024A
FAST_FLAG	equ $024D
KBD_REPEAT1	equ $024E
KBD_REPEAT2	equ $024F

CURSOR_ENAB_SAVE	equ $0251
IF_FLAG		equ $0252
FIRST_COL	equ $0253
PRINTER_WIDTH	equ $0256
SCREEN_WIDTH	equ $0257
PRINTER_XPOS_SAVE	equ $0258
SCREEN_XPOS_SAVE	equ $0259
MERGE_FLAG	equ $025A
VERIFY_FLAG	equ $025B
ERROR_COUNT	equ $025C
TYPESTRING	equ $025E

RAMFAULT	equ $0260
CTL_ROUT_PTR	equ $0261
LINEADDR_WORK	equ $0263
CURSOR_WORK	equ $0265
SCREENY		equ $0268
SCREENX		equ $0269
DISP_FLAGS	equ $026A
PAPER_VAL	equ $026B
INK_VAL		equ $026C

CURSOR_STATE	equ $0271
TIMER1		equ $0272
TIMER2		equ $0274
TIMER3		equ $0276
LINE2_ADDR	equ $0278
LINE1_ADDR	equ $027A
SCROLLSIZE	equ $027C
SCROLL_LINES	equ $027E
PROGNAME	equ $027F

FOUNDNAME	equ $0293
K7HEADER	equ $02A8
PROGSTART	equ $02A9
PROGEND		equ $02AB
PROGTYPE	equ $02AD
AUTO_FLAG	equ $02AE
ARRAY_STRFLAG	equ $02AF

ARRAY_INTFLAG	equ $02B0
TAPE_ERRORS	equ $02B1
MEMORY_MODE	equ $02C0
HIMEM_MAX	equ $02C1
RELCURSOR_FLAG	equ $02C3
ASCII_CODE	equ $02DF

PARAM_ERROR	equ $02E0
PARAM1		equ $02E1
PARAM2		equ $02E3
PARAM3		equ $02E5
PARAM4		equ $02E7

PARAMCOUNT	equ $02F0
PRINTERFLAG	equ $02F1
LISTRETURNFLAG	equ $02F2
TRACE_FLAG	equ $02F4
BANG_PTR	equ $02F5
XPOS_SAVE	equ $02F8
AMPERSAND_VECT	equ $02FB

VIA		equ $0300
VIA_ORB		equ $0300
VIA_IRB		equ $0300
VIA_ORA		equ $0301
VIA_IRA		equ $0301
VIA_DDRB	equ $0302
VIA_DDRA	equ $0303
VIA_T1C		equ $0304
VIA_T1L		equ $0306
VIA_T2C		equ $0308
VIA_SR		equ $030A
VIA_ACR		equ $030B
VIA_PCR		equ $030C
VIA_IFR		equ $030D
VIA_IER		equ $030E
VIA_ORA_NOHANDSHAKE	equ $030F

HIRES_CHARSET	equ $9800
HIRES_FIRST	equ $A000
ALT_CHARSET	equ $B900
STATUS_LINE	equ $BB80
TEXTLINE1	equ STATUS_LINE+40
TEXTLINE2	equ TEXTLINE1+40	
SCREEN_LAST	equ $BFDF

BYT1		equ $24
BYT2		equ $2C

; quelques caractères ASCII

CTRL_A		equ 1
CTRL_C		equ 3
CTRL_F		equ 6
CTRL_H		equ 8
CTRL_I		equ 9
LF		equ $0A
CTRL_K		equ $0B
FORMFEED	equ $0C
CR		equ $0D
CTRL_O		equ $0F
CTRL_S		equ $13
CTRL_T		equ $14
CTRL_X		equ $18
ESC		equ $1B

SPACE		equ $20
DBLQUOTE	equ $22
DIARESIS	equ $23
DOLLAR		equ $24
PERCENTAGE	equ $25
AMPERSAND	equ $26
QUOTE		equ $27
LEFT_PARENT	equ $28
RIGHT_PARENT	equ $29
PLUS		equ $2B
COMMA		equ $2C
MINUS		equ $2D
DOT		equ $2E
ZERO		equ $30
COLON		equ $3A
SEMICOLON	equ $3B
QUESTION_MARK	equ $3F

LETTER_A	equ $41
LETTER_E	equ $45
LETTER_J	equ $4A
LETTER_S	equ $53
LETTER_V	equ $56
LETTER_Z	equ $5A

LEFT_SQUAREBRACKET	equ $5B
BACKSLASH	equ $5C
RIGHT_SQUAREBRACKET	equ $5D
DEL		equ $7F

LOWER		equ $80

; liste des tokens

TOKEN_END	equ 128
TOKEN_EDIT	equ 129

TOKEN_STORE	equ 130
TOKEN_RECALL	equ 131
TOKEN_TRON	equ 132
TOKEN_TROFF	equ 133
TOKEN_POP	equ 134
TOKEN_PLOT	equ 135
TOKEN_PULL	equ 136
TOKEN_LORES	equ 137
TOKEN_DOKE	equ 138
TOKEN_REPEAT	equ 139

TOKEN_UNTIL	equ 140
TOKEN_FOR	equ 141
TOKEN_LLIST	equ 142
TOKEN_LPRINT	equ 143
TOKEN_NEXT	equ 144
TOKEN_DATA	equ 145
TOKEN_INPUT	equ 146
TOKEN_DIM	equ 147
TOKEN_CLS	equ 148
TOKEN_READ	equ 149

TOKEN_LET	equ 150
TOKEN_GOTO	equ 151
TOKEN_RUN	equ 152
TOKEN_IF	equ 153
TOKEN_RESTORE	equ 154
TOKEN_GOSUB	equ 155
TOKEN_RETURN	equ 156
TOKEN_REM	equ 157
TOKEN_HIMEM	equ 158
TOKEN_GRAB	equ 159

TOKEN_RELEASE	equ 160
TOKEN_TEXT	equ 161
TOKEN_HIRES	equ 162
TOKEN_SHOOT	equ 163
TOKEN_EXPLODE	equ 164
TOKEN_ZAP	equ 165
TOKEN_PING	equ 166
TOKEN_SOUND	equ 167
TOKEN_MUSIC	equ 168
TOKEN_PLAY	equ 169

TOKEN_CURSET	equ 170
TOKEN_CURMOV	equ 171
TOKEN_DRAW	equ 172
TOKEN_CIRCLE	equ 173
TOKEN_PATTERN	equ 174
TOKEN_FILL	equ 175
TOKEN_CHAR	equ 176
TOKEN_PAPER	equ 177
TOKEN_INK	equ 178
TOKEN_STOP	equ 179

TOKEN_ON	equ 180
TOKEN_WAIT	equ 181
TOKEN_CLOAD	equ 182
TOKEN_CSAVE	equ 183
TOKEN_DEF	equ 184
TOKEN_POKE	equ 185
TOKEN_PRINT	equ 186
TOKEN_CONT	equ 187
TOKEN_LIST	equ 188
TOKEN_CLEAR	equ 189

TOKEN_GET	equ 190
TOKEN_CALL	equ 191
TOKEN_BANG	equ 192
TOKEN_NEW	equ 193

COMMAND_TOKENS	equ	TOKEN_NEW-TOKEN_END+1

TOKEN_TAB	equ 194
TOKEN_TO	equ 195
TOKEN_FN	equ 196
TOKEN_SPC	equ 197
TOKEN_AT	equ 198
TOKEN_AUTO	equ 199

TOKEN_ELSE	equ 200
TOKEN_THEN	equ 201
TOKEN_NOT	equ 202
TOKEN_STEP	equ 203
TOKEN_PLUS	equ 204
TOKEN_MINUS	equ 205
TOKEN_TIMES	equ 206
TOKEN_DIV	equ 207
TOKEN_POWER	equ 208
TOKEN_AND	equ 209

TOKEN_OR	equ 210
TOKEN_GREATER	equ 211
TOKEN_EQUAL	equ 212
TOKEN_LESS	equ 213

TOKEN_SGN	equ 214
TOKEN_INT	equ 215
TOKEN_ABS	equ 216
TOKEN_USR	equ 217
TOKEN_FRE	equ 218
TOKEN_POS	equ 219

TOKEN_HEX	equ 220
TOKEN_AMPERSAND	equ 221
TOKEN_SQR	equ 222
TOKEN_RND	equ 223
TOKEN_LN	equ 224
TOKEN_EXP	equ 225
TOKEN_COS	equ 226
TOKEN_SIN	equ 227
TOKEN_TAN	equ 228
TOKEN_ATN	equ 229

TOKEN_PEEK	equ 230
TOKEN_DEEK	equ 231
TOKEN_LOG	equ 232
TOKEN_LEN	equ 233
TOKEN_STR	equ 234
TOKEN_VAL	equ 235
TOKEN_ASC	equ 236
TOKEN_CHR	equ 237
TOKEN_PI	equ 238
TOKEN_TRUE	equ 239

TOKEN_FALSE	equ 240
TOKEN_KEY	equ 241
TOKEN_SCRN	equ 242
TOKEN_POINT	equ 243
TOKEN_LEFT	equ 244
TOKEN_RIGHT	equ 245
TOKEN_MID	equ 246


	org $C000


	jmp LECCC
	db $4C
	db $71
	db $C4
COMMANDTAB
	dw ENDCOMMAND-1
	dw EDIT-1
	dw STORE-1
	dw RECALL-1
	dw TRON-1
	dw TROFF-1
	dw RETURN-1
	dw PLOT-1
	dw UNTIL-1
	dw LORES-1
	dw DOKE-1
	dw REPEAT-1
	dw UNTIL-1
	dw FOR-1
	dw LLIST-1
	dw LPRINT-1
	dw NEXT-1
	dw DATA-1
	dw INPUT-1
	dw DIM-1
	dw CLS-1
	dw READ-1
	dw LET-1
	dw GOTO-1
	dw RUN-1
	dw IFCOMMAND-1
	dw RESTORE-1
	dw GOSUB-1
	dw RETURN-1
	dw REM-1
	dw HIMEM-1
	dw GRAB-1
	dw RELEASE-1
	dw TEXT-1
	dw HIRES-1
	dw SHOOT-1
	dw EXPLODE-1
	dw ZAP-1
	dw PING-1
	dw EXTCOMMANDS-1
	dw EXTCOMMANDS-1
	dw EXTCOMMANDS-1
	dw GRAPHCOMMANDS-1
	dw GRAPHCOMMANDS-1
	dw GRAPHCOMMANDS-1
	dw GRAPHCOMMANDS-1
	dw GRAPHCOMMANDS-1
	dw GRAPHCOMMANDS-1
	dw GRAPHCOMMANDS-1
	dw EXTCOMMANDS-1
	dw EXTCOMMANDS-1
	dw STOP-1
	dw ON-1
	dw WAIT-1
	dw CLOAD-1
	dw CSAVE-1
	dw DEF-1
	dw POKE-1
	dw PRINT-1
	dw CONT-1
	dw LIST-1
	dw CLEAR-1
	dw GET-1
	dw CALL-1
	dw BANG-1
	dw NEW-1

FONCTIONTAB
	dw SGN
	dw INT
	dw ABS_FCT
	dw USRVECT
	dw FREE
	dw POS
	dw HEX
	dw AMPERSAND_VECT
	dw SQR
	dw RND
	dw LN
	dw EXP
	dw COS_FCT
	dw SIN_FCT
	dw TAN_FCT
	dw ATN_FCT
	dw PEEK
	dw DEEK
	dw LOG_FCT
	dw LEN_FCT
	dw STR_FCT
	dw VAL_FCT
	dw ASC_FCT
	dw CHR_FCT
	dw PI_FCT
	dw TRUE
	dw FALSE
	dw KEY_FCT
	dw SCRN
	dw POINT
	dw LEFT_FCT
	dw RIGHT_FCT
	dw MID_FCT

OPERATORS	db 121
	dw LDB25-1
	db 121
	dw LDB0E-1
	db 123
	dw LDCF0-1
	db 123
	dw LDDE7-1
	db 127
	dw LE238-1
	db 80
	dw LD0E6-1
	db 70
	dw LD0E3-1
	db 125
	dw LE271-1
	db 90
	dw LD03C-1
	db 100
	dw LD113-1

KEYWORDS	string "EN"
	db 'D'+$80
	string "EDI"
	db 'T'+$80
	string "STOR"
	db 'E'+$80
	string "RECAL"
	db 'L'+$80
	string "TRO"
	db 'N'+$80
	string "TROF"
	db 'F'+$80
	string "PO"
	db 'P'+$80
	string "PLO"
	db 'T'+$80
	string "PUL"
	db 'L'+$80
	string "LORE"
	db 'S'+$80
	string "DOK"
	db 'E'+$80
	string "REPEA"
	db 'T'+$80
	string "UNTI"
	db 'L'+$80
	string "FO"
	db 'R'+$80
	string "LLIS"
	db 'T'+$80
	string "LPRIN"
	db 'T'+$80
	string "NEX"
	db 'T'+$80
	string "DAT"
	db 'A'+$80
	string "INPU"
	db 'T'+$80
	string "DI"
	db 'M'+$80
	string "CL"
	db 'S'+$80
	string "REA"
	db 'D'+$80
	string "LE"
	db 'T'+$80
	string "GOT"
	db 'O'+$80
	string "RU"
	db 'N'+$80
	string "I"
	db 'F'+$80
	string "RESTOR"
	db 'E'+$80
	string "GOSU"
	db 'B'+$80
	string "RETUR"
	db 'N'+$80
	string "RE"
	db 'M'+$80
	string "HIME"
	db 'M'+$80
	string "GRA"
	db 'B'+$80
	string "RELEAS"
	db 'E'+$80
	string "TEX"
	db 'T'+$80
	string "HIRE"
	db 'S'+$80
	string "SHOO"
	db 'T'+$80
	string "EXPLOD"
	db 'E'+$80
	string "ZA"
	db 'P'+$80
	string "PIN"
	db 'G'+$80
	string "SOUN"
	db 'D'+$80
	string "MUSI"
	db 'C'+$80
	string "PLA"
	db 'Y'+$80
	string "CURSE"
	db 'T'+$80
	string "CURMO"
	db 'V'+$80
	string "DRA"
	db 'W'+$80
	string "CIRCL"
	db 'E'+$80
	string "PATTER"
	db 'N'+$80
	string "FIL"
	db 'L'+$80
	string "CHA"
	db 'R'+$80
	string "PAPE"
	db 'R'+$80
	string "IN"
	db 'K'+$80
	string "STO"
	db 'P'+$80
	string "O"
	db 'N'+$80
	string "WAI"
	db 'T'+$80
	string "CLOA"
	db 'D'+$80
	string "CSAV"
	db 'E'+$80
	string "DE"
	db 'F'+$80
	string "POK"
	db 'E'+$80
	string "PRIN"
	db 'T'+$80
	string "CON"
	db 'T'+$80
	string "LIS"
	db 'T'+$80
	string "CLEA"
	db 'R'+$80
	string "GE"
	db 'T'+$80
	string "CAL"
	db 'L'+$80
	string ""
	db '!'+$80
	string "NE"
	db 'W'+$80
	string "TAB"
	db '('+$80
	string "T"
	db 'O'+$80
	string "F"
	db 'N'+$80
	string "SPC"
	db '('+$80
	string ""
	db '@'+$80
	string "AUT"
	db 'O'+$80
	string "ELS"
	db 'E'+$80
	string "THE"
	db 'N'+$80
	string "NO"
	db 'T'+$80
	string "STE"
	db 'P'+$80
	db '+'+$80
	db '-'+$80
	db '*'+$80
	db '/'+$80
	db '^'+$80
	string "AN"
	db 'D'+$80
	string "O"
	db 'R'+$80
	db '>'+$80
	db '='+$80
	db '<'+$80
	string "SG"
	db 'N'+$80
	string "IN"
	db 'T'+$80
	string "AB"
	db 'S'+$80
	string "US"
	db 'R'+$80
	string "FR"
	db 'E'+$80
	string "PO"
	db 'S'+$80
	string "HEX"
	db '$'+$80
	db '&'+$80
	string "SQ"
	db 'R'+$80
	string "RN"
	db 'D'+$80
	string "L"
	db 'N'+$80
	string "EX"
	db 'P'+$80
	string "CO"
	db 'S'+$80
	string "SI"
	db 'N'+$80
	string "TA"
	db 'N'+$80
	string "AT"
	db 'N'+$80
	string "PEE"
	db 'K'+$80
	string "DEE"
	db 'K'+$80
	string "LO"
	db 'G'+$80
	string "LE"
	db 'N'+$80
	string "STR"
	db '$'+$80
	string "VA"
	db 'L'+$80
	string "AS"
	db 'C'+$80
	string "CHR"
	db '$'+$80
	string "P"
	db 'I'+$80
	string "TRU"
	db 'E'+$80
	string "FALS"
	db 'E'+$80
	string "KEY"
	db '$'+$80
	string "SCR"
	db 'N'+$80
	string "POIN"
	db 'T'+$80
	string "LEFT"
	db '$'+$80
	string "RIGHT"
	db '$'+$80
	string "MID"
	db '$'+$80
	db 0

ERRMESSAGES
NEXTWITHOUTFOR	string "NEXT WITHOUT FO"
	db 'R'+$80
LC2B8	string "SYNTA"
	db 'X'+$80
LC2BE	string "RETURN WITHOUT GOSU"
	db 'B'+$80
LC2D2	string "OUT OF DAT"
	db 'A'+$80
LC2DD	string "ILLEGAL QUANTIT"
	db 'Y'+$80
LC2ED	string "OVERFLO"
	db 'W'+$80
LC2F5	string "OUT OF MEMOR"
	db 'Y'+$80
LC302	string "UNDEF'D STATEMEN"
	db 'T'+$80
LC313	string "BAD SUBSCRIP"
	db 'T'+$80
LC320	string "REDIM'D ARRA"
	db 'Y'+$80
LC32D	string "DIVISION BY ZER"
	db 'O'+$80
LC33D	string "ILLEGAL DIREC"
	db 'T'+$80
LC34B	string "DISP "
LC350	string "TYPE MISMATC"
	db 'H'+$80
LC35D	string "STRING TOO LON"
	db 'G'+$80
LC36C	string "FORMULA TOO COMPLE"
	db 'X'+$80
LC37F	string "CAN'T CONTINU"
	db 'E'+$80
LC38D	string "UNDEF'D FUNCTIO"
	db 'N'+$80
LC39D	string "BAD UNTI"
	db 'L'+$80
LC3A6	string " ERROR"
	db 0
LC3AD	string " IN "
	db 0
LC3B2	db $0D,$0A
	string "Ready "
	db $0D,$0A,0
LC3BD	db $0D,$0A
	string " BREAK"
	db 0
LC3C6	tsx
	inx
	inx
	inx
	inx
LC3CB	lda STACK+1,x
	cmp #TOKEN_FOR
	bne LC3F3
	lda VAR_ADDR2+1
	bne LC3E0
	lda STACK+2,x
	sta VAR_ADDR2
	lda STACK+3,x
	sta VAR_ADDR2+1
LC3E0	cmp STACK+3,x
	bne LC3EC
	lda VAR_ADDR2
	cmp STACK+2,x
	beq LC3F3
LC3EC	txa
	clc
	adc #18
	tax
	bne LC3CB
LC3F3	rts
LC3F4	jsr LC444
	sta ARRAY_END
	sty ARRAY_END+1
LC3FB	sec
	lda ACC4+3
	sbc LINESEARCH
	sta PTR1
	tay
	lda ACC4+4
	sbc LINESEARCH+1
	tax
	inx
	tya
	beq LC42F
	lda ACC4+3
	sec
	sbc PTR1
	sta ACC4+3
	bcs LC418
	dec ACC4+4
	sec
LC418	lda ACC4+1
	sbc PTR1
	sta ACC4+1
	bcs LC428
	dec ACC4+2
	bcc LC428
LC424	lda (ACC4+3),y
	sta (ACC4+1),y
LC428	dey
	bne LC424
	lda (ACC4+3),y
	sta (ACC4+1),y
LC42F	dec ACC4+4
	dec ACC4+2
	dex
	bne LC428
	rts
LC437	asl a
	adc #62			; laisse 62 octets de marge
	bcs LC47C
	sta PTR1
	tsx
	cpx PTR1
	bcc LC47C
	rts
LC444	cpy STRING_BOTTOM+1
	bcc LC470
	bne LC44E
	cmp STRING_BOTTOM
	bcc LC470
LC44E	pha
	ldx #9
	tya
LC452	pha
	lda ACC4,x
	dex
	bpl LC452
	jsr LD650
	ldx #-9
LC45D	pla
	sta ACC4+10,x
	inx
	bmi LC45D
	pla
	tay
	pla
	cpy STRING_BOTTOM+1
	bcc LC470
	bne LC47C
	cmp STRING_BOTTOM
	bcs LC47C
LC470	rts
LC471	lda MEMORY_MODE
	and #%11111110
	sta MEMORY_MODE
	jmp LC4A8
LC47C	ldx #LC2F5-ERRMESSAGES
LC47E	jsr LC82F
	lsr KBD_DISABLE
	jsr LCBF0
	jsr LCCD7
LC489	lda ERRMESSAGES,x
	pha
	and #%01111111
	jsr LCCD9
	inx
	pla
	bpl LC489
	jsr LC726
	lda #LOW LC3A6
	ldy #HIGH LC3A6
LC49D	jsr LCCB0
	ldy LINENUM+1
	iny
	beq LC4A8
	jsr LE0BA
LC4A8	lsr IF_FLAG
	lsr KBD_DISABLE
	lsr LISTRETURNFLAG
	lda #LOW LC3B2
	ldy #HIGH LC3B2
	jsr READY_VECT
LC4B7	jsr LC82F
	jsr LC592
	stx TXTPTR
	sty TXTPTR+1
	jsr NEXTCHAR
	tax
	beq LC4B7
	ldx #255
	stx LINENUM+1
	bcc LC4D3
	jsr LC5FA
	jmp LC90C
LC4D3	jsr LCAE2
	jsr LC5FA
	sty LINESIZE
	jsr LC6B3
	bcc LC524
	ldy #1
	lda (LINESEARCH),y
	sta PTR1+1
	lda VARS
	sta PTR1
	lda LINESEARCH+1
	sta PTR2+1
	lda LINESEARCH
	dey
	sbc (LINESEARCH),y
	clc
	adc VARS
	sta VARS
	sta PTR2
	lda VARS+1
	adc #-1
	sta VARS+1
	sbc LINESEARCH+1
	tax
	sec
	lda LINESEARCH
	sbc VARS
	tay
	bcs LC50E
	inx
	dec PTR2+1
LC50E	clc
	adc PTR1
	bcc LC516
	dec PTR1+1
	clc
LC516	lda (PTR1),y
	sta (PTR2),y
	iny
	bne LC516
	inc PTR1+1
	inc PTR2+1
	dex
	bne LC516
LC524	jsr LC708
	jsr LC55F
	lda ENTRYBUF
	beq LC4B7
	clc
	lda VARS
	sta ACC4+3
	adc LINESIZE
	sta ACC4+1
	ldy VARS+1
	sty ACC4+4
	bcc LC53E
	iny
LC53E	sty ACC4+2
	jsr LC3F4
	lda ARRAY_END
	ldy ARRAY_END+1
	sta VARS
	sty VARS+1
	ldy LINESIZE
	dey
LC54E	lda ENTRYLINE,y
	sta (LINESEARCH),y
	dey
	bpl LC54E
	jsr LC708
	jsr LC55F
	jmp LC4B7
LC55F	lda BASTXT
	ldy BASTXT+1
	sta PTR1
	sty PTR1+1
	clc
LC568	ldy #1
	lda (PTR1),y
	beq LC58B
	ldy #4
LC570	iny
	lda (PTR1),y
	bne LC570
	iny
	tya
	adc PTR1
	tax
	ldy #0
	sta (PTR1),y
	lda PTR1+1
	adc #0
	iny
	sta (PTR1),y
	stx PTR1
	sta PTR1+1
	bcc LC568
LC58B	rts
LC58C	dex
	bpl LC594
LC58F	jsr LCBF0
LC592	ldx #0
LC594	jsr LC5E8
	cmp #CTRL_A
	bne LC5A8
	ldy SCREENX
	lda (TXTLIN_ADDR),y
	and #%01111111
	cmp #SPACE
	bcs LC5A8
	lda #CTRL_I
LC5A8	pha
	jsr LCCD9
	pla
	cmp #DEL
	beq LC58C
	cmp #CR
	beq LC5E5
	cmp #CTRL_C
	beq LC5E1
	cmp #CTRL_X
	beq LC5C8
	cmp #SPACE
	bcc LC594
	sta ENTRYBUF,x
	inx
	cpx #TXTBUFLEN-1
	bcc LC5CF
LC5C8	lda #BACKSLASH
	jsr LCCD9
	bne LC58F
LC5CF	cpx #TXTBUFLEN-4
	bcc LC594
	txa
	pha
	tya
	pha
	jsr PING
	pla
	tay
	pla
	tax
	jmp LC594
LC5E1	inc INPUT_FLAG
	ldx #0
LC5E5	jmp LCBEA
LC5E8
    db 2,1
    nop         ; PATCH (jsr KBD_VECT)
	nop
    nop         ; PATCH (bpl LC5E8)
	cmp #CTRL_O
	bne LC5F9
	pha
	lda KBD_DISABLE
	eor #%11111111
	sta KBD_DISABLE
	pla
LC5F9	rts
LC5FA	ldx TXTPTR
	ldy #4
	sty KEYW_FLAG
LC600	lda 0,x
	cmp #SPACE
	beq LC647
	sta TERMINATOR2
	cmp #DBLQUOTE
	beq LC66B
	bit KEYW_FLAG
	bvs LC647
	cmp #QUESTION_MARK
	bne LC618
	lda #TOKEN_PRINT
	bne LC647
LC618	cmp #ZERO
	bcc LC620
	cmp #SEMICOLON+1
	bcc LC647
LC620	sty SAVETXTPTR
	ldy #0
	sty LINESIZE
	lda #LOW KEYWORDS-1
	sta KEYW_ADDR
	lda #HIGH KEYWORDS-1
	sta KEYW_ADDR+1
	stx TXTPTR
	dex
LC631	inx
	inc KEYW_ADDR
	bne LC638
	inc KEYW_ADDR+1
LC638	lda 0,x
	sec
	sbc (KEYW_ADDR),y
	beq LC631
	cmp #%10000000
	bne LC672
	ora LINESIZE
LC645	ldy SAVETXTPTR
LC647	inx
	iny
	sta ENTRYLINE-1,y
	lda ENTRYLINE-1,y
	beq LC68A
	sec
	sbc #COLON
	beq LC65A
	cmp #TOKEN_DATA-COLON
	bne LC65C
LC65A	sta KEYW_FLAG
LC65C	sec
	sbc #TOKEN_REM-COLON
	bne LC600
	sta TERMINATOR2
LC663	lda 0,x
	beq LC647
	cmp TERMINATOR2
	beq LC647
LC66B	iny
	sta ENTRYLINE-1,y
	inx
	bne LC663
LC672	ldx TXTPTR
	inc LINESIZE
LC676	lda (KEYW_ADDR),y
	php
	inc KEYW_ADDR
	bne LC67F
	inc KEYW_ADDR+1
LC67F	plp
	bpl LC676
	lda (KEYW_ADDR),y
	bne LC638
	lda 0,x
	bpl LC645
LC68A	sta ENTRYLINE+1,y
	lda #ENTRYBUF-1
	sta TXTPTR
	rts
EDIT	jsr LCAE2
	jsr LC6B3
	bcc LC6B0
	ror LISTRETURNFLAG
	jsr LC76C
	lsr LISTRETURNFLAG
	jsr LCBF0
	lda #CTRL_K
	jsr LCCD9
	pla
	pla
	jmp LC4B7
LC6B0	jmp LCA23
LC6B3	lda #0
	sta DOKE_ADDR
	sta DOKE_ADDR+1
	lda BASTXT
	ldx BASTXT+1
LC6BD	ldy #1
	sta LINESEARCH
	stx LINESEARCH+1
	lda (LINESEARCH),y
	beq LC6EC
	iny
	iny
	inc DOKE_ADDR
	bne LC6CF
	inc DOKE_ADDR+1
LC6CF	lda TMP+1
	cmp (LINESEARCH),y
	bcc LC6ED
	beq LC6DA
	dey
	bne LC6E3
LC6DA	lda TMP
	dey
	cmp (LINESEARCH),y
	bcc LC6ED
	beq LC6ED
LC6E3	dey
	lda (LINESEARCH),y
	tax
	dey
	lda (LINESEARCH),y
	bcs LC6BD
LC6EC	clc
LC6ED	rts
NEW	bne LC6ED
LC6F0	lda #0
	lsr TRACE_FLAG
	tay
	sta (BASTXT),y
	iny
	sta (BASTXT),y
	lda BASTXT
	clc
	adc #2
	sta VARS
	lda BASTXT+1
	adc #0
	sta VARS+1
LC708	jsr LC73A
	lda #0
CLEAR	bne LC739
LC70F	lda HIMEM_PTR
	ldy HIMEM_PTR+1
	sta STRING_BOTTOM
	sty STRING_BOTTOM+1
	lda VARS
	ldy VARS+1
	sta ARRAYS
	sty ARRAYS+1
	sta ARRAY_END
	sty ARRAY_END+1
	jsr RESTORE
LC726	ldx #DESC_STACK
	stx STK_PTR
	pla
	tay
	pla
	ldx #$FE
	txs
	pha
	tya
	pha
	lda #0
	sta LAST_TXTPTR+1
	sta ARRAY_FLAG
LC739	rts
LC73A	clc
	lda BASTXT
	adc #-1
	sta TXTPTR
	lda BASTXT+1
	adc #-1
	sta TXTPTR+1
	rts
LIST	php
	jsr LCAE2
	jsr LC6B3
	plp
	beq LC766
	jsr TXTCHAR
	beq LC76C
	cmp #TOKEN_MINUS
	bne LC6ED
	jsr NEXTCHAR
	beq LC766
	jsr LCAE2
	beq LC76C
	rts
LC766	lda #255
	sta TMP
	sta TMP+1
LC76C	ldy #1
	lda (LINESEARCH),y
	beq LC7BF
	jsr LC962
	cmp #SPACE
	bne LC787
	lsr ASCII_CODE
LC77C	lda ASCII_CODE
	bpl LC77C
	jsr LC962
	lsr ASCII_CODE
LC787	iny
	lda (LINESEARCH),y
	tax
	iny
	lda (LINESEARCH),y
	cmp TMP+1
	bne LC796
	cpx TMP
	beq LC798
LC796	bcs LC7BF
LC798	sty VAR_ADDR2
	pha
	jsr LCBF0
	pla
	jsr LE0C5
	lda #SPACE
LC7A4	ldy VAR_ADDR2
	and #%01111111
LC7A8	jsr LCCD9
	iny
	beq LC7BF
	lda (LINESEARCH),y
	bne LC7D0
	tay
	lda (LINESEARCH),y
	tax
	iny
	lda (LINESEARCH),y
	stx LINESEARCH
	sta LINESEARCH+1
	bne LC76C
LC7BF	bit LISTRETURNFLAG
	bpl LC7C5
	rts
LC7C5	jsr LCBF0
	jsr LC82F
	pla
	pla
	jmp LC4A8
LC7D0	bpl LC7A8
	sec
	sbc #128-1
	tax
	sty VAR_ADDR2
	ldy #0
	lda #LOW KEYWORDS-1
	sta KEYW_ADDR
	lda #HIGH KEYWORDS-1	
	sta KEYW_ADDR+1
LC7E2	dex
	beq LC7F2
LC7E5	inc KEYW_ADDR
	bne LC7EB
	inc KEYW_ADDR+1
LC7EB	lda (KEYW_ADDR),y
	bpl LC7E5
	jmp LC7E2
LC7F2	iny
	lda (KEYW_ADDR),y
	bmi LC7A4
	jsr LCCD9
	jmp LC7F2
LLIST	jsr LC816
	lsr LISTRETURNFLAG
	jsr TXTCHAR
	jmp LIST
LPRINT	jsr LC816
	jsr TXTCHAR
	jsr PRINT
	jsr LC82F
	rts
LC816	bit PRINTERFLAG
	bmi LC854
	lda COLUMN_COUNT
	sta SCREEN_XPOS_SAVE
	lda PRINTER_XPOS_SAVE
	sta COLUMN_COUNT
	sec
	ror PRINTERFLAG
	lda PRINTER_WIDTH
	jmp LC844
LC82F	bit PRINTERFLAG
	bpl LC854
	lda COLUMN_COUNT
	sta PRINTER_XPOS_SAVE
	lda SCREEN_XPOS_SAVE
	sta COLUMN_COUNT
LC83E	lsr PRINTERFLAG
	lda SCREEN_WIDTH
LC844	sta PRINT_WIDTH
LC846	sec
	sbc #8
	bcs LC846
	eor #%11111111
	sbc #6
	clc
	adc PRINT_WIDTH
	sta MAXTAB
LC854	rts
FOR	lda #%10000000
	sta ARRAY_FLAG
	jsr LET
	jsr LC3C6
	bne LC866
	txa
	adc #15
	tax
	txs
LC866	pla
	pla
	lda #18/2
	jsr LC437
	jsr LCA4E
	clc
	tya
	adc TXTPTR
	pha
	lda TXTPTR+1
	adc #0
	pha
	lda LINENUM+1
	pha
	lda LINENUM
	pha
	lda #TOKEN_TO
	jsr LD067
	jsr LCF06
	jsr LCF03
	lda ACC1+5
	ora #%01111111
	and ACC1+1
	sta ACC1+1
	lda #LOW LC89E
	ldy #HIGH LC89E
	sta PTR1
	sty PTR1+1
	jmp LCFC0
LC89E	lda #LOW LDC81
	ldy #HIGH LDC81
	jsr LDE7B
	jsr TXTCHAR
	cmp #TOKEN_STEP
	bne LC8B2
	jsr NEXTCHAR
	jsr LCF03
LC8B2	jsr LDF13
	jsr LCFB1
	lda VAR_ADDR2+1
	pha
	lda VAR_ADDR2
	pha
	lda #TOKEN_FOR
	pha
LC8C1	jsr LC962
	lda TXTPTR
	ldy TXTPTR+1
	beq LC8D0
	sta LAST_TXTPTR
	sty LAST_TXTPTR+1
	ldy #0
LC8D0	lda (TXTPTR),y
	bne LC92F
	lsr IF_FLAG
	ldy #2
	lda (TXTPTR),y
	clc
	bne LC8E1
	jmp LC98A
LC8E1	iny
	lda (TXTPTR),y
	sta LINENUM
	iny
	lda (TXTPTR),y
	sta LINENUM+1
	tya
	adc TXTPTR
	sta TXTPTR
	bcc LC8F4
	inc TXTPTR+1
LC8F4	bit TRACE_FLAG
	bpl LC90C
	pha
	lda #LEFT_SQUAREBRACKET
	jsr LCCFB
	lda LINENUM+1
	ldx LINENUM
	jsr LE0C5
	lda #RIGHT_SQUAREBRACKET
	jsr LCCFB
	pla
LC90C	jsr NEXTCHAR
	jsr LC915
	jmp LC8C1
LC915	beq LC960
LC917	sbc #128
	bcc LC92C
	cmp #COMMAND_TOKENS
	bcs LC94F
	asl a
	tay
	lda COMMANDTAB+1,y
	pha
	lda COMMANDTAB,y
	pha
	jmp NEXTCHAR
LC92C	jmp LET
LC92F	cmp #COLON
	beq LC8F4
	cmp #TOKEN_ELSE
	bne LC945
	bit IF_FLAG
	bpl LC94F
	jsr LCAB1
	lsr IF_FLAG
	jmp LC8C1
LC945	cmp #QUOTE
	bne LC94F
	jsr REM
	jmp LC8C1
LC94F	jmp LD070
RESTORE	sec
	lda BASTXT
	sbc #1
	ldy BASTXT+1
	bcs LC95C
	dey
LC95C	sta DATAPTR
	sty DATAPTR+1
LC960	rts
LC961	rts
LC962	lda ASCII_CODE
	bpl LC960
	and #%01111111
	ldx #CTRL_H
	cmp #CTRL_C
	bne LC961
	cmp #CTRL_C
STOP	bcs LC974
ENDCOMMAND	clc
LC974	bne LC9B9
	lda TXTPTR
	ldy TXTPTR+1
	beq LC988
	sta LAST_TXTPTR
	sty LAST_TXTPTR+1
LC980	lda LINENUM
	ldy LINENUM+1
	sta CONTLINE
	sty CONTLINE+1
LC988	pla
	pla
LC98A	lda #LOW LC3BD
	ldy #HIGH LC3BD
	ldx #0
	stx PRINTERFLAG
	stx ASCII_CODE
	stx KBD_DISABLE
	bcc LC99D
	jmp LC49D
LC99D	jmp LC4A8
CONT	bne LC9B9
	ldx #LC37F-ERRMESSAGES
	ldy LAST_TXTPTR+1
	bne LC9AB
	jmp LC47E
LC9AB	lda LAST_TXTPTR
	sta TXTPTR
	sty TXTPTR+1
	lda CONTLINE
	ldy CONTLINE+1
	sta LINENUM
	sty LINENUM+1
LC9B9	rts
	db $4C
	db $36
	db $D3
RUN	bne LC9C2
	jmp LC708
LC9C2	jsr LC70F
	jmp LC9DC
GOSUB	lda #6/2
	jsr LC437
	lda TXTPTR+1
	pha
	lda TXTPTR
	pha
	lda LINENUM+1
	pha
	lda LINENUM
	pha
	lda #TOKEN_GOSUB
	pha
LC9DC	jsr TXTCHAR
	jsr GOTO
	jmp LC8C1
GOTO	jsr LE853
	jsr LCA51
	lda LINENUM+1
	cmp TMP+1
	bcs LC9FC
	tya
	sec
	adc TXTPTR
	ldx TXTPTR+1
	bcc LCA00
	inx
	bcs LCA00
LC9FC	lda BASTXT
	ldx BASTXT+1
LCA00	jsr LC6BD
	bcc LCA23
	lda LINESEARCH
	sbc #1
	sta TXTPTR
	lda LINESEARCH+1
	sbc #0
	sta TXTPTR+1
LCA11	rts
RETURN	bne LCA11
	lda #-1
	sta VAR_ADDR2+1
	jsr LC3C6
	txs
	cmp #TOKEN_GOSUB
	beq LCA2B
	ldx #LC2BE-ERRMESSAGES
	db BYT2
LCA23	ldx #LC302-ERRMESSAGES
	jmp LC47E
	db $4C
	db $70
	db $D0
LCA2B	pla
	pla
	cpy #(TOKEN_POP-128)*2
	beq LCA4A
	sta LINENUM
	pla
	sta LINENUM+1
	pla
	sta TXTPTR
	pla
	sta TXTPTR+1
DATA	jsr LCA4E
LCA3F	tya
	clc
	adc TXTPTR
	sta TXTPTR
	bcc LCA49
	inc TXTPTR+1
LCA49	rts
LCA4A	pla
	pla
	pla
	rts
LCA4E	ldx #COLON
	db BYT2
LCA51	ldx #0
	stx TERMINATOR1
	ldy #0
	sty TERMINATOR2
LCA59	lda TERMINATOR2
	ldx TERMINATOR1
	sta TERMINATOR1
	stx TERMINATOR2
LCA61	lda (TXTPTR),y
	beq LCA49
	cmp TERMINATOR2
	beq LCA49
	iny
	cmp #DBLQUOTE
	bne LCA61
	beq LCA59
IFCOMMAND	jsr LCF17
	jsr TXTCHAR
	cmp #TOKEN_GOTO
	beq LCA7F
	lda #TOKEN_THEN
	jsr LD067
LCA7F	lda ACC1
	bne LCA88
	jsr LCA9E
	beq LCA3F
LCA88	jsr TXTCHAR
	bcs LCA90
	jmp GOTO
LCA90	php
	sec
	ror IF_FLAG
	plp
	jmp LC915
REM	jsr LCA51
	beq LCA3F
LCA9E	ldy #0
LCAA0	lda (TXTPTR),y
	beq LCAB0
	iny
	cmp #TOKEN_THEN
	beq REM
	cmp #TOKEN_ELSE
	bne LCAA0
	jmp LCA3F
LCAB0	rts
LCAB1	ldy #-1
LCAB3	iny
	lda (TXTPTR),y
	beq LCABC
	cmp #COLON
	bne LCAB3
LCABC	jmp LCA3F
LCABF	jmp LD070
ON	jsr LD8C8
	pha
	cmp #TOKEN_GOSUB
	beq LCACE
LCACA	cmp #TOKEN_GOTO
	bne LCABF
LCACE	dec ACC1+4
	bne LCAD6
	pla
	jmp LC917
LCAD6	jsr NEXTCHAR
	jsr LCAE2
	cmp #COMMA
	beq LCACE
	pla
LCAE1	rts
LCAE2	ldx #0
	stx TMP
	stx TMP+1
LCAE8	bcs LCAE1
	sbc #ZERO-1
	sta TERMINATOR1
	lda TMP+1
	sta PTR1
	cmp #HIGH (64000/10)
	bcs LCACA
	lda TMP
	asl a
	rol PTR1
	asl a
	rol PTR1
	adc TMP
	sta TMP
	lda PTR1
	adc TMP+1
	sta TMP+1
	asl TMP
	rol TMP+1
	lda TMP
	adc TERMINATOR1
	sta TMP
	bcc LCB16
	inc TMP+1
LCB16	jsr NEXTCHAR
	jmp LCAE8
LET	jsr LD188
	sta VAR_ADDR2
	sty VAR_ADDR2+1
	lda #TOKEN_EQUAL
	jsr LD067
	lda INT_FLAG
	pha
	lda STR_FLAG
	pha
	jsr LCF17
	pla
	rol a
	jsr LCF09
	bne LCB50
	pla
LCB39	bpl LCB4D
	jsr LDEF4
	jsr LD2A9
	ldy #0
	lda ACC1+3
	sta (VAR_ADDR2),y
	iny
	lda ACC1+4
	sta (VAR_ADDR2),y
	rts
LCB4D	jmp LDEA9
LCB50	pla
LCB51	ldy #2
	lda (ACC1+3),y
	cmp STRING_BOTTOM+1
	bcc LCB70
	bne LCB62
	dey
	lda (ACC1+3),y
	cmp STRING_BOTTOM
	bcc LCB70
LCB62	ldy ACC1+4
	cpy VARS+1
	bcc LCB70
	bne LCB77
	lda ACC1+3
	cmp VARS
	bcs LCB77
LCB70	lda ACC1+3
	ldy ACC1+4
	jmp LCB8D
LCB77	ldy #0
	lda (ACC1+3),y
	jsr LD5A3
	lda STRWORK
	ldy STRWORK+1
	sta PROD_SIGN
	sty ACC1_EXT
	jsr LD7A4
	lda #LOW ACC1
	ldy #HIGH ACC1
LCB8D	sta STRWORK
	sty STRWORK+1
	jsr LD805
	ldy #0
	lda (STRWORK),y
	sta (VAR_ADDR2),y
	iny
	lda (STRWORK),y
	sta (VAR_ADDR2),y
	iny
	lda (STRWORK),y
	sta (VAR_ADDR2),y
	rts
LCBA5	jsr LCCB3
LCBA8	jsr TXTCHAR
PRINT	beq LCBF0
LCBAD	beq LCC0B
	cmp #TOKEN_TAB
	beq LCC2E
	cmp #TOKEN_SPC
	clc
	beq LCC2E
	cmp #COMMA
	beq LCC0C
	cmp #SEMICOLON
	beq LCC2B
	cmp #TOKEN_AT
	bne LCBC7
	jmp LCC59
LCBC7	jsr LCF17
	bit STR_FLAG
	bmi LCBA5
	jsr LE0D5
	jsr LD5B5
	ldy #0
	lda (ACC1+3),y
	clc
	adc COLUMN_COUNT
	cmp PRINT_WIDTH
	bcc LCBE2
	jsr LCBF0
LCBE2	jsr LCCB3
	jsr LCCD4
	bne LCBA8
LCBEA	ldy #0
	sty ENTRYBUF,x
	ldx #ENTRYBUF-1
LCBF0	lda COLUMN_COUNT
	pha
	lda #CR
	jsr LCCD9
	pla
	bit PRINTERFLAG
	bmi LCC02
	cmp PRINT_WIDTH
	beq LCC0B
LCC02	lda #0
	sta COLUMN_COUNT
	lda #LF
	jsr LCCD9
LCC0B	rts
LCC0C	lda COLUMN_COUNT
	bit PRINTERFLAG
	bmi LCC17
	sec
	sbc FIRST_COL
LCC17	sec
LCC18	sbc #8
	bcs LCC18
	eor #-1
	adc #1
	tax
	clc
	adc COLUMN_COUNT
	cmp PRINT_WIDTH
	bcc LCC47
	jsr LCBF0
LCC2B	jmp LCC4B
LCC2E	php
	jsr LD8C5
	cmp #RIGHT_PARENT
	bne LCC56
	plp
	bcc LCC47
	txa
	cmp PRINT_WIDTH
	bcc LCC41
	jmp LD336
LCC41	sec
	sbc COLUMN_COUNT
	bcc LCC4B
	tax
LCC47	inx
LCC48	dex
	bne LCC51
LCC4B	jsr NEXTCHAR
	jmp LCBAD
LCC51	jsr LCCD4
	bne LCC48
LCC56	jmp LD070
LCC59	bit PRINTERFLAG
	bmi LCC56
	ldx HIRESFLAG
	beq LCC66
	jmp LEAF7
LCC66	jsr LD8C5
	cpx #40
	bcs LCCAD
	stx SRCPTR
	jsr LD065
	jsr LD8C8
	inx
	cpx #28
	bcs LCCAD
	lda DISP_FLAGS
	pha
	and #%11111110
	sta DISP_FLAGS
	lda #0
	jsr LF801
	lda SRCPTR
	sta SCREENX
	txa
	sta SCREENY
	jsr LDA0C
	lda LINE_ADDR
	ldy LINE_ADDR+1
	sta TXTLIN_ADDR
	sty TXTLIN_ADDR+1
	pla
	sta DISP_FLAGS
	lda #1
	jsr LF801
	lda #SEMICOLON
	jsr LD067
	jmp LCBAD
LCCAD	jmp LD8C2
LCCB0	jsr LD5B5
LCCB3	jsr LD7D0
	tax
	ldy #0
	inx
LCCBA	dex
	beq LCCCD
	lda (PTR1),y
	jsr LCCD9
	iny
	cmp #CR
	bne LCCBA
	jsr LCC0B
	jmp LCCBA
LCCCD	rts
CLS	lda #FORMFEED
	db BYT2
	db $A9
	db $11
	db BYT2
LCCD4	lda #SPACE
	db BYT2
LCCD7	lda #QUESTION_MARK
LCCD9	bit KBD_DISABLE
	bmi LCD10
	pha
	cmp #SPACE
	bcc LCCED
	lda COLUMN_COUNT
	cmp PRINT_WIDTH
	bne LCCEB
	jsr LCBF0
LCCEB	inc COLUMN_COUNT
LCCED	pla
	bit PRINTERFLAG
	bpl LCCFB
	pha
	jsr PRINTER_VECT
	pla
	and #$FF
	rts
LCCFB	stx VARFOUND
	tax
	jsr VDU_VECT    ; PATCH (jsr LF77C)
	cmp #SPACE
	bcc LCD09
	cmp #DEL
	bne LCD0E
LCD09	ldx SCREENX
	stx COLUMN_COUNT
LCD0E	ldx VARFOUND
LCD10	and #$FF
	rts
BANG	jmp (BANG_PTR)
TRON	lda #%10000000
	db BYT2
TROFF	lda #0
	sta TRACE_FLAG
	rts
LCD1F	lda INPUTCODE
	beq LCD36
	bmi LCD29
	ldy #-1
	bne LCD2D
LCD29	lda SAVELINE
	ldy SAVELINE+1
LCD2D	sta LINENUM
	sty LINENUM+1
	ldx #LC350-ERRMESSAGES
	jmp LC47E
LCD36	lda #LOW LCE85
	ldy #HIGH LCE85
	jsr LCCB0
	lda LAST_TXTPTR
	ldy LAST_TXTPTR+1
	sta TXTPTR
	sty TXTPTR+1
	rts
GET	jsr LD4D2
	ldx #ENTRYBUF+1
	ldy #0
	sty ENTRYBUF+1
	lda #%01000000
	jsr LCD8F
	rts
INPUT	lsr KBD_DISABLE
	cmp #DBLQUOTE
	bne LCD66
	jsr LD025
	lda #SEMICOLON
	jsr LD067
	jsr LCCB3
LCD66	jsr LD4D2
	lda #COMMA
	sta TMP+1
LCD6D	lda #0
	sta INPUT_FLAG
	jsr LCD80
	lda ENTRYBUF
	bne LCD8E
	lda INPUT_FLAG
	beq LCD6D
	clc
	jmp LC980
LCD80	jsr LCCD7
	jsr LCCD4
	jmp LC592
READ	ldx DATAPTR
	ldy DATAPTR+1
	db $A9		; lda #%10011000
LCD8E	tya
LCD8F	sta INPUTCODE
	stx DATAPTR2
	sty DATAPTR2+1
LCD95	jsr LD188
	sta VAR_ADDR2
	sty VAR_ADDR2+1
	lda TXTPTR
	ldy TXTPTR+1
	sta TXTPTR_SAV2
	sty TXTPTR_SAV2+1
	ldx DATAPTR2
	ldy DATAPTR2+1
	stx TXTPTR
	sty TXTPTR+1
	jsr TXTCHAR
	bne LCDCE
	bit INPUTCODE
	bvc LCDC2
LCDB5
    db  2,1
    nop     ; PATCH (jsr LEB78)
	nop
    nop     ; PATCH (bpl LCDB5)
	sta ENTRYBUF
	ldx #ENTRYBUF-1
	ldy #0
	beq LCDCA
LCDC2	bmi LCE35
	jsr LCCD7
	jsr LCD80
LCDCA	stx TXTPTR
	sty TXTPTR+1
LCDCE	jsr NEXTCHAR
	bit STR_FLAG
	bpl LCE06
	bit INPUTCODE
	bvc LCDE2
	inx
	stx TXTPTR
	lda #0
	sta TERMINATOR1
	beq LCDEE
LCDE2	sta TERMINATOR1
	cmp #DBLQUOTE
	beq LCDEF
	lda #COLON
	sta TERMINATOR1
	lda #COMMA
LCDEE	clc
LCDEF	sta TERMINATOR2
	lda TXTPTR
	ldy TXTPTR+1
	adc #0
	bcc LCDFA
	iny
LCDFA	jsr LD5BB
	jsr LD90D
	jsr LCB51
	jmp LCE0E
LCE06	jsr LDFE7
	lda INT_FLAG
	jsr LCB39
LCE0E	jsr TXTCHAR
	beq LCE1A
	cmp #COMMA
	beq LCE1A
	jmp LCD1F
LCE1A	lda TXTPTR
	ldy TXTPTR+1
	sta DATAPTR2
	sty DATAPTR2+1
	lda TXTPTR_SAV2
	ldy TXTPTR_SAV2+1
	sta TXTPTR
	sty TXTPTR+1
	jsr TXTCHAR
	beq LCE5B
	jsr LD065
	jmp LCD95
LCE35	jsr LCA4E
	iny
	tax
	bne LCE4E
	ldx #LC2D2-ERRMESSAGES
	iny
	lda (TXTPTR),y
	beq LCEAC
	iny
	lda (TXTPTR),y
	sta SAVELINE
	iny
	lda (TXTPTR),y
	iny
	sta SAVELINE+1
LCE4E	lda (TXTPTR),y
	tax
	jsr LCA3F
	cpx #TOKEN_DATA
	bne LCE35
	jmp LCDCE
LCE5B	lda DATAPTR2
	ldy DATAPTR2+1
	ldx INPUTCODE
	bpl LCE66
	jmp LC95C
LCE66	ldy #0
	lda (DATAPTR2),y
	beq LCE73
	lda #LOW LCE74
	ldy #HIGH LCE74
	jmp LCCB0
LCE73	rts
LCE74	string "?EXTRA IGNORED"
	db $0D,$0A,0
LCE85	string "?REDO FROM START"
	db $0D,$0A,0
NEXT	bne LCE9E
	ldy #0
	beq LCEA1
LCE9E	jsr LD188
LCEA1	sta VAR_ADDR2
	sty VAR_ADDR2+1
	jsr LC3C6
	beq LCEAE
	ldx #NEXTWITHOUTFOR-ERRMESSAGES
LCEAC	beq LCF14
LCEAE	txs
	txa
	clc
	adc #4
	pha
	adc #6
	sta PTR2
	pla
	ldy #1
	jsr LDE7B
	tsx
	lda STACK+9,x
	sta ACC1+5
	lda VAR_ADDR2
	ldy VAR_ADDR2+1
	jsr LDB22
	jsr LDEA9
	ldy #1
	jsr LDF4E
	tsx
	sec
	sbc STACK+9,x
	beq LCEF1
	lda STACK+15,x
	sta LINENUM
	lda STACK+16,x
	sta LINENUM+1
	lda STACK+18,x
	sta TXTPTR
	lda STACK+17,x
	sta TXTPTR+1
LCEEE	jmp LC8C1
LCEF1	txa
	adc #17
	tax
	txs
	jsr TXTCHAR
	cmp #COMMA
	bne LCEEE
	jsr NEXTCHAR
	jsr LCE9E
LCF03	jsr LCF17
LCF06	clc
	db BYT1
LCF08	sec
LCF09	bit STR_FLAG
	bmi LCF10
	bcs LCF12
LCF0F	rts
LCF10	bcs LCF0F
LCF12	ldx #LC350-ERRMESSAGES
LCF14	jmp LC47E
LCF17	ldx TXTPTR
	bne LCF1D
	dec TXTPTR+1
LCF1D	dec TXTPTR
	ldx #0
	db BYT1
LCF22	pha
	txa
	pha
	lda #2/2
	jsr LC437
	jsr LD000
	lda #0
	sta OPCOMP_CODE
LCF31	jsr TXTCHAR
LCF34	sec
	sbc #TOKEN_GREATER
	bcc LCF50
	cmp #3
	bcs LCF50
	cmp #1
	rol a
	eor #1
	eor OPCOMP_CODE
	cmp OPCOMP_CODE
	bcc LCFA9
	sta OPCOMP_CODE
	jsr NEXTCHAR
	jmp LCF34
LCF50	ldx OPCOMP_CODE
	bne LCF80
	bcs LCFD5
	adc #7
	bcc LCFD5
	adc STR_FLAG
	bne LCF61
	jmp LD767
LCF61	adc #-1
	sta PTR1
	asl a
	adc PTR1
	tay
LCF69	pla
	cmp OPERATORS,y
	bcs LCFDA
	jsr LCF06
LCF72	pha
LCF73	jsr LCF99
	pla
	ldy TXTPTR_SAV2
	bpl LCF92
	tax
	beq LCFD8
	bne LCFE3
LCF80	lsr STR_FLAG
	txa
	rol a
	ldx TXTPTR
	bne LCF8A
	dec TXTPTR+1
LCF8A	dec TXTPTR
	ldy #9*3
	sta OPCOMP_CODE
	bne LCF69
LCF92	cmp OPERATORS,y
	bcs LCFE3
	bcc LCF72
LCF99	lda OPERATORS+2,y
	pha
	lda OPERATORS+1,y
	pha
	jsr LCFAC
	lda OPCOMP_CODE
	jmp LCF22
LCFA9	jmp LD070
LCFAC	lda ACC1+5
	ldx OPERATORS,y
LCFB1	tay
	pla
	sta PTR1
	pla
	sta PTR1+1
	inc PTR1
	bne LCFBE
	inc PTR1+1
LCFBE	tya
	pha
LCFC0	jsr LDEF4
	lda ACC1+4
	pha
	lda ACC1+3
	pha
	lda ACC1+2
	pha
	lda ACC1+1
	pha
	lda ACC1
	pha
	jmp (PTR1)
LCFD5	ldy #-1
	pla
LCFD8	beq LCFFD
LCFDA	cmp #100
	beq LCFE1
	jsr LCF06
LCFE1	sty TXTPTR_SAV2
LCFE3	pla
	lsr a
	sta COMPARECODE
	pla
	sta ACC2
	pla
	sta ACC2+1
	pla
	sta ACC2+2
	pla
	sta ACC2+3
	pla
	sta ACC2+4
	pla
	sta ACC2+5
	eor ACC1+5
	sta PROD_SIGN
LCFFD	lda ACC1
	rts
LD000	lda #0
	sta STR_FLAG
LD004	jsr NEXTCHAR
	bcs LD00C
LD009	jmp LDFE7
LD00C	jsr LD216
	bcs LD07C
	cmp #DOT
	beq LD009
	cmp #DIARESIS
	beq LD009
	cmp #TOKEN_MINUS
	beq LD075
	cmp #TOKEN_PLUS
	beq LD004
	cmp #DBLQUOTE
	bne LD034
LD025	lda TXTPTR
	ldy TXTPTR+1
	adc #0
	bcc LD02E
	iny
LD02E	jsr LD5B5
	jmp LD90D
LD034	cmp #TOKEN_NOT
	bne LD04B
	ldy #8*3
	bne LD077
LD03C	jsr LD2A9
	lda ACC1+4
	eor #%11111111
	tay
	lda ACC1+3
	eor #%11111111
	jmp LD499
LD04B	cmp #TOKEN_FN
	bne LD052
	jmp LD522
LD052	cmp #TOKEN_SGN
	bcc LD059
	jmp LD0A0
LD059	jsr LD062
	jsr LCF17
LD05F	lda #RIGHT_PARENT
	db BYT2
LD062	lda #LEFT_PARENT
	db BYT2
LD065	lda #COMMA
LD067	ldy #0
	cmp (TXTPTR),y
	bne LD070
	jmp NEXTCHAR
LD070	ldx #LC2B8-ERRMESSAGES
	jmp LC47E
LD075	ldy #7*3
LD077	pla
	pla
	jmp LCF73
LD07C	jsr LD188
	sta ACC1+3
	sty ACC1+4
	ldx STR_FLAG
	beq LD08C
	ldx #0
	stx ACC1_EXT
	rts
LD08C	ldx INT_FLAG
	bpl LD09D
	ldy #0
	lda (ACC1+3),y
	tax
	iny
	lda (ACC1+3),y
	tay
	txa
	jmp LD499
LD09D	jmp LDE7B
LD0A0	asl a
	pha
	tax
	jsr NEXTCHAR
	cpx #LOW (TOKEN_PI*2)-1
	bcc LD0CE
	cpx #LOW (TOKEN_LEFT*2)-1
	bcc LD0D1
	jsr LD062
	jsr LCF17
	jsr LD065
	jsr LCF08
	pla
	tax
	lda ACC1+4
	pha
	lda ACC1+3
	pha
	txa
	pha
	jsr LD8C8
	pla
	tay
	txa
	pha
	jmp LD0D3
LD0CE	jsr LD059
LD0D1	pla
	tay
LD0D3	lda FONCTIONTAB-172,y
	sta FCT_VECT+1
	lda FONCTIONTAB+1-172,y
	sta FCT_VECT+2
	jsr FCT_VECT
	jmp LCF06
LD0E3	ldy #%11111111
	db BYT2
LD0E6	ldy #0
	sty LINESIZE
	jsr LD2A9
	lda ACC1+3
	eor LINESIZE
	sta TERMINATOR1
	lda ACC1+4
	eor LINESIZE
	sta TERMINATOR2
	jsr LDED5
	jsr LD2A9
	lda ACC1+4
	eor LINESIZE
	and TERMINATOR2
	eor LINESIZE
	tay
	lda ACC1+3
	eor LINESIZE
	and TERMINATOR1
	eor LINESIZE
	jmp LD499
LD113	jsr LCF09
	bcs LD12B
	lda ACC2+5
	ora #%01111111
	and ACC2+1
	sta ACC2+1
	lda #LOW ACC2
	ldy #HIGH ACC2
	jsr LDF4C
	tax
	jmp LD15E
LD12B	lda #0
	sta STR_FLAG
	dec OPCOMP_CODE
	jsr LD7D0
	sta ACC1
	stx ACC1+1
	sty ACC1+2
	lda ACC2+3
	ldy ACC2+4
	jsr LD7D4
	stx ACC2+3
	sty ACC2+4
	tax
	sec
	sbc ACC1
	beq LD153
	lda #1
	bcc LD153
	ldx ACC1
	lda #-1
LD153	sta ACC1+5
	ldy #-1
	inx
LD158	iny
	dex
	bne LD163
	ldx ACC1+5
LD15E	bmi LD16F
	clc
	bcc LD16F
LD163	lda (ACC2+3),y
	cmp (ACC1+1),y
	beq LD158
	ldx #-1
	bcs LD16F
	ldx #1
LD16F	inx
	txa
	rol a
	and COMPARECODE
	beq LD178
	lda #-1
LD178	jmp LDF24
LD17B	jsr LD065
DIM	tax
	jsr LD18D
	jsr TXTCHAR
	bne LD17B
	rts
LD188	ldx #0
	jsr TXTCHAR
LD18D	stx VARFOUND
LD18F	sta VARNAME1
	jsr TXTCHAR
	jsr LD216
	bcs LD19C
LD199	jmp LD070
LD19C	ldx #0
	stx STR_FLAG
	stx INT_FLAG
	jsr NEXTCHAR
	bcc LD1AC
	jsr LD216
	bcc LD1B7
LD1AC	tax
LD1AD	jsr NEXTCHAR
	bcc LD1AD
	jsr LD216
	bcs LD1AD
LD1B7	cmp #DOLLAR
	bne LD1C1
	lda #%11111111
	sta STR_FLAG
	bne LD1D1
LD1C1	cmp #PERCENTAGE
	bne LD1D8
	lda ARRAY_FLAG
	bmi LD199
	lda #%10000000
	sta INT_FLAG
	ora VARNAME1
	sta VARNAME1
LD1D1	txa
	ora #%10000000
	tax
	jsr NEXTCHAR
LD1D8	stx VARNAME2
	sec
	ora ARRAY_FLAG
	sbc #LEFT_PARENT
	bne LD1E4
LD1E1	jmp LD2BB
LD1E4	bit ARRAY_FLAG
	bvs LD1E1
	lda #0
	sta ARRAY_FLAG
	lda VARS
	ldx VARS+1
	ldy #0
LD1F2	stx LINESEARCH+1
LD1F4	sta LINESEARCH
	cpx ARRAYS+1
	bne LD1FE
	cmp ARRAYS
	beq LD222
LD1FE	lda VARNAME1
	cmp (LINESEARCH),y
	bne LD20C
	lda VARNAME2
	iny
	cmp (LINESEARCH),y
	beq LD277
	dey
LD20C	clc
	lda LINESEARCH
	adc #7
	bcc LD1F4
	inx
	bne LD1F2
LD216	cmp #LETTER_A
	bcc LD221
	sbc #LETTER_Z+1
	sec
	sbc #-LETTER_Z-1
	bcs LD221
LD221	rts
LD222	pla
	pha
	cmp #LOW LD07C+2
	bne LD235
	tsx
	lda STACK+2,x
	cmp #HIGH LD07C+2
	bne LD235
	lda #LOW (LE205+2)
	ldy #HIGH (LE205+2)
	rts
LD235	lda ARRAYS
	ldy ARRAYS+1
	sta LINESEARCH
	sty LINESEARCH+1
	lda ARRAY_END
	ldy ARRAY_END+1
	sta ACC4+3
	sty ACC4+4
	clc
	adc #7
	bcc LD24B
	iny
LD24B	sta ACC4+1
	sty ACC4+2
	jsr LC3F4
	lda ACC4+1
	ldy ACC4+2
	iny
	sta ARRAYS
	sty ARRAYS+1
	ldy #0
	lda VARNAME1
	sta (LINESEARCH),y
	iny
	lda VARNAME2
	sta (LINESEARCH),y
	lda #0
	iny
	sta (LINESEARCH),y
	iny
	sta (LINESEARCH),y
	iny
	sta (LINESEARCH),y
	iny
	sta (LINESEARCH),y
	iny
	sta (LINESEARCH),y
LD277	lda LINESEARCH
	clc
	adc #2
	ldy LINESEARCH+1
	bcc LD281
	iny
LD281	sta VAR_ADDR
	sty VAR_ADDR+1
	rts
LD286	lda LINESIZE
LD288	asl a
	adc #5
	adc LINESEARCH
	ldy LINESEARCH+1
	bcc LD292
	iny
LD292	sta ACC4+1
	sty ACC4+2
	rts
LD297	db $90,$80,$00,$00,$00
LD29C	jsr NEXTCHAR
	jsr LCF17
LD2A2	jsr LCF06
	lda ACC1+5
	bmi LD2B6
LD2A9	lda ACC1
	cmp #128+16
	bcc LD2B8
	lda #LOW LD297
	ldy #HIGH LD297
	jsr LDF4C
LD2B6	bne LD336
LD2B8	jmp LDF8C
LD2BB	lda ARRAY_FLAG
	bne LD306
	lda VARFOUND
	ora INT_FLAG
	pha
	lda STR_FLAG
	pha
	ldy #0
LD2C9	tya
	pha
	lda VARNAME2
	pha
	lda VARNAME1
	pha
	jsr LD29C
	pla
	sta VARNAME1
	pla
	sta VARNAME2
	pla
	tay
	tsx
	lda STACK+2,x
	pha
	lda STACK+1,x
	pha
	lda ACC1+3
	sta STACK+2,x
	lda ACC1+4
	sta STACK+1,x
	iny
	jsr TXTCHAR
	cmp #COMMA
	beq LD2C9
	sty LINESIZE
	jsr LD05F
	pla
	sta STR_FLAG
	pla
	sta INT_FLAG
	and #%01111111
	sta VARFOUND
LD306	ldx ARRAYS
	lda ARRAYS+1
LD30A	stx LINESEARCH
	sta LINESEARCH+1
	cmp ARRAY_END+1
	bne LD316
	cpx ARRAY_END
	beq LD355
LD316	ldy #0
	lda (LINESEARCH),y
	iny
	cmp VARNAME1
	bne LD325
	lda VARNAME2
	cmp (LINESEARCH),y
	beq LD33B
LD325	iny
	lda (LINESEARCH),y
	clc
	adc LINESEARCH
	tax
	iny
	lda (LINESEARCH),y
	adc LINESEARCH+1
	bcc LD30A
LD333	ldx #LC313-ERRMESSAGES
	db BYT2
LD336	ldx #LC2DD-ERRMESSAGES
LD338	jmp LC47E
LD33B	ldx #LC320-ERRMESSAGES
	lda VARFOUND
	bne LD338
	lda ARRAY_FLAG
	beq LD347
	sec
	rts
LD347	jsr LD286
	lda LINESIZE
	ldy #4
	cmp (LINESEARCH),y
	bne LD333
	jmp LD3EB
LD355	lda ARRAY_FLAG
	beq LD361
	jsr LE93D
	ldx #LC2D2-ERRMESSAGES
	jmp LC47E
LD361	jsr LD286
	jsr LC444
	lda #0
	tay
	sta SAVETXTPTR+1
	ldx #5
	lda VARNAME1
	sta (LINESEARCH),y
	bpl LD375
	dex
LD375	iny
	lda VARNAME2
	sta (LINESEARCH),y
	bpl LD37E
	dex
	dex
LD37E	stx SAVETXTPTR
	lda LINESIZE
	iny
	iny
	iny
	sta (LINESEARCH),y
LD387	ldx #11
	lda #0
	bit VARFOUND
	bvc LD397
	pla
	clc
	adc #1
	tax
	pla
	adc #0
LD397	iny
	sta (LINESEARCH),y
	iny
	txa
	sta (LINESEARCH),y
	jsr LD44D
	stx SAVETXTPTR
	sta SAVETXTPTR+1
	ldy PTR1
	dec LINESIZE
	bne LD387
	adc ACC4+2
	bcs LD40C
	sta ACC4+2
	tay
	txa
	adc ACC4+1
	bcc LD3BA
	iny
	beq LD40C
LD3BA	jsr LC444
	sta ARRAY_END
	sty ARRAY_END+1
	lda #0
	inc SAVETXTPTR+1
	ldy SAVETXTPTR
	beq LD3CE
LD3C9	dey
	sta (ACC4+1),y
	bne LD3C9
LD3CE	dec ACC4+2
	dec SAVETXTPTR+1
	bne LD3C9
	inc ACC4+2
	sec
	lda ARRAY_END
	sbc LINESEARCH
	ldy #2
	sta (LINESEARCH),y
	lda ARRAY_END+1
	iny
	sbc LINESEARCH+1
	sta (LINESEARCH),y
	lda VARFOUND
	bne LD44C
	iny
LD3EB	lda (LINESEARCH),y
	sta LINESIZE
	lda #0
	sta SAVETXTPTR
LD3F3	sta SAVETXTPTR+1
	iny
	pla
	tax
	sta ACC1+3
	pla
	sta ACC1+4
	cmp (LINESEARCH),y
	bcc LD40F
	bne LD409
	iny
	txa
	cmp (LINESEARCH),y
	bcc LD410
LD409	jmp LD333
LD40C	jmp LC47C
LD40F	iny
LD410	lda SAVETXTPTR+1
	ora SAVETXTPTR
	clc
	beq LD421
	jsr LD44D
	txa
	adc ACC1+3
	tax
	tya
	ldy PTR1
LD421	adc ACC1+4
	stx SAVETXTPTR
	dec LINESIZE
	bne LD3F3
	sta SAVETXTPTR+1
	ldx #5
	lda VARNAME1
	bpl LD432
	dex
LD432	lda VARNAME2
	bpl LD438
	dex
	dex
LD438	stx ACC3+2
	lda #0
	jsr LD456
	txa
	adc ACC4+1
	sta VAR_ADDR
	tya
	adc ACC4+2
	sta VAR_ADDR+1
	tay
	lda VAR_ADDR
LD44C	rts
LD44D	sty PTR1
	lda (LINESEARCH),y
	sta ACC3+2
	dey
	lda (LINESEARCH),y
LD456	sta ACC3+3
	lda #16
	sta ACC5+1
	ldx #0
	ldy #0
LD460	txa
	asl a
	tax
	tya
	rol a
	tay
	bcs LD40C
	asl SAVETXTPTR
	rol SAVETXTPTR+1
	bcc LD479
	clc
	txa
	adc ACC3+2
	tax
	tya
	adc ACC3+3
	tay
	bcs LD40C
LD479	dec ACC5+1
	bne LD460
	rts
FREE	lda STR_FLAG
	beq LD485
	jsr LD7D0
LD485	jsr LD650
	sec
	lda STRING_BOTTOM
	sbc ARRAY_END
	tay
	lda STRING_BOTTOM+1
	sbc ARRAY_END+1
	ldx #0
	stx STR_FLAG
	jmp LDF40
LD499	ldx #0
	stx STR_FLAG
	sta ACC1+1
	sty ACC1+2
	ldx #128+16
	jmp LDF2C
POS	jsr LD8CB
	txa
	beq LD4B4
	ldy PRINTER_XPOS_SAVE
	bit PRINTERFLAG
	bpl LD4B6
LD4B4	ldy COLUMN_COUNT
LD4B6	lda #0
	beq LD499
DEF	cmp #TOKEN_USR
	bne LD4DF
	jsr NEXTCHAR
	lda #TOKEN_EQUAL
	jsr LD067
	jsr LE853
	lda TMP
	ldy TMP+1
	sta USRVECT+1
	sty USRVECT+2
LD4D1	rts
LD4D2	ldx LINENUM+1
	inx
	bne LD4D1
	ldx #LC33D-ERRMESSAGES
	db BYT2
LD4DA	ldx #LC38D-ERRMESSAGES
	jmp LC47E
LD4DF	jsr LD50D
	jsr LD4D2
	jsr LD062
	lda #%10000000
	sta ARRAY_FLAG
	jsr LD188
	jsr LCF06
	jsr LD05F
	lda #TOKEN_EQUAL
	jsr LD067
	pha
	lda VAR_ADDR+1
	pha
	lda VAR_ADDR
	pha
	lda TXTPTR+1
	pha
	lda TXTPTR
	pha
	jsr DATA
	jmp LD57D
LD50D	lda #TOKEN_FN
	jsr LD067
	ora #%10000000
	ldx #%10000000
	stx ARRAY_FLAG
	jsr LD18F
	sta FN_EVAL
	sty FN_EVAL+1
	jmp LCF06
LD522	jsr LD50D
	lda FN_EVAL+1
	pha
	lda FN_EVAL
	pha
	jsr LD059
	jsr LCF06
	pla
	sta FN_EVAL
	pla
	sta FN_EVAL+1
	ldy #2
	lda (FN_EVAL),y
	sta VAR_ADDR
	tax
	iny
	lda (FN_EVAL),y
	beq LD4DA
	sta VAR_ADDR+1
	iny
LD546	lda (VAR_ADDR),y
	pha
	dey
	bpl LD546
	ldy VAR_ADDR+1
	jsr LDEAD
	lda TXTPTR+1
	pha
	lda TXTPTR
	pha
	lda (FN_EVAL),y
	sta TXTPTR
	iny
	lda (FN_EVAL),y
	sta TXTPTR+1
	lda VAR_ADDR+1
	pha
	lda VAR_ADDR
	pha
	jsr LCF03
	pla
	sta FN_EVAL
	pla
	sta FN_EVAL+1
	jsr TXTCHAR
	beq LD577
	jmp LD070
LD577	pla
	sta TXTPTR
	pla
	sta TXTPTR+1
LD57D	ldy #0
	pla
	sta (FN_EVAL),y
	pla
	iny
	sta (FN_EVAL),y
	pla
	iny
	sta (FN_EVAL),y
	pla
	iny
	sta (FN_EVAL),y
	pla
	iny
	sta (FN_EVAL),y
	rts
STR_FCT	jsr LCF06
	ldy #0
	jsr LE0D7
LD59B	pla
	pla
	lda #LOW NUM_BUFFER
	ldy #HIGH NUM_BUFFER
	beq LD5B5
LD5A3	ldx ACC1+3
	ldy ACC1+4
	stx STRWORK
	sty STRWORK+1
LD5AB	jsr LD61E
	stx ACC1+1
	sty ACC1+2
	sta ACC1
	rts
LD5B5	ldx #DBLQUOTE
	stx TERMINATOR1
	stx TERMINATOR2
LD5BB	sta PROD_SIGN
	sty ACC1_EXT
	sta ACC1+1
	sty ACC1+2
	ldy #-1
LD5C5	iny
	lda (PROD_SIGN),y
	beq LD5D6
	cmp TERMINATOR1
	beq LD5D2
	cmp TERMINATOR2
	bne LD5C5
LD5D2	cmp #DBLQUOTE
	beq LD5D7
LD5D6	clc
LD5D7	sty ACC1
	tya
	adc PROD_SIGN
	sta SAVETXTPTR
	ldx ACC1_EXT
	bcc LD5E3
	inx
LD5E3	stx SAVETXTPTR+1
	lda ACC1_EXT
	bne LD5F4
	tya
	jsr LD5A3
	ldx PROD_SIGN
	ldy ACC1_EXT
	jsr LD7B2
LD5F4	ldx STK_PTR
	cpx #DESC_STACK+9
	bne LD5FF
	ldx #LC36C-ERRMESSAGES
LD5FC	jmp LC47E
LD5FF	lda ACC1
	sta 0,x
	lda ACC1+1
	sta 1,x
	lda ACC1+2
	sta 2,x
	ldy #0
	stx ACC1+3
	sty ACC1+4
	sty ACC1_EXT
	dey
	sty STR_FLAG
	stx OLD_STK_PTR
	inx
	inx
	inx
	stx STK_PTR
	rts
LD61E	lsr KEYW_FLAG
LD620	pha
	eor #-1
	sec
	adc STRING_BOTTOM
	ldy STRING_BOTTOM+1
	bcs LD62B
	dey
LD62B	cpy ARRAY_END+1
	bcc LD640
	bne LD635
	cmp ARRAY_END
	bcc LD640
LD635	sta STRING_BOTTOM
	sty STRING_BOTTOM+1
	sta TMP_STR
	sty TMP_STR+1
	tax
	pla
	rts
LD640	ldx #LC2F5-ERRMESSAGES
	lda KEYW_FLAG
	bmi LD5FC
	jsr LD650
	lda #%10000000
	sta KEYW_FLAG
	pla
	bne LD620
LD650	ldx HIMEM_PTR
	lda HIMEM_PTR+1
LD654	stx STRING_BOTTOM
	sta STRING_BOTTOM+1
	ldy #0
	sty FN_EVAL+1
	sty FN_EVAL
	lda ARRAY_END
	ldx ARRAY_END+1
	sta LINESEARCH
	stx LINESEARCH+1
	lda #LOW DESC_STACK
	ldx #HIGH DESC_STACK
	sta PTR1
	stx PTR1+1
LD66E	cmp STK_PTR
	beq LD677
	jsr LD6F1
	beq LD66E
LD677	lda #7
	sta STRLEN
	lda VARS
	ldx VARS+1
	sta PTR1
	stx PTR1+1
LD683	cpx ARRAYS+1
	bne LD68B
	cmp ARRAYS
	beq LD690
LD68B	jsr LD6E7
	beq LD683
LD690	sta ACC4+1
	stx ACC4+2
	lda #3
	sta STRLEN
LD698	lda ACC4+1
	ldx ACC4+2
LD69C	cpx ARRAY_END+1
	bne LD6A7
	cmp ARRAY_END
	bne LD6A7
	jmp LD730
LD6A7	sta PTR1
	stx PTR1+1
	ldy #0
	lda (PTR1),y
	tax
	iny
	lda (PTR1),y
	php
	iny
	lda (PTR1),y
	adc ACC4+1
	sta ACC4+1
	iny
	lda (PTR1),y
	adc ACC4+2
	sta ACC4+2
	plp
	bpl LD698
	txa
	bmi LD698
	iny
	lda (PTR1),y
	ldy #0
	asl a
	adc #5
	adc PTR1
	sta PTR1
	bcc LD6D8
	inc PTR1+1
LD6D8	ldx PTR1+1
LD6DA	cpx ACC4+2
	bne LD6E2
	cmp ACC4+1
	beq LD69C
LD6E2	jsr LD6F1
	beq LD6DA
LD6E7	lda (PTR1),y
	bmi LD720
	iny
	lda (PTR1),y
	bpl LD720
	iny
LD6F1	lda (PTR1),y
	beq LD720
	iny
	lda (PTR1),y
	tax
	iny
	lda (PTR1),y
	cmp STRING_BOTTOM+1
	bcc LD706
	bne LD720
	cpx STRING_BOTTOM
	bcs LD720
LD706	cmp LINESEARCH+1
	bcc LD720
	bne LD710
	cpx LINESEARCH
	bcc LD720
LD710	stx LINESEARCH
	sta LINESEARCH+1
	lda PTR1
	ldx PTR1+1
	sta FN_EVAL
	stx FN_EVAL+1
	lda STRLEN
	sta FCT_VECT+1
LD720	lda STRLEN
	clc
	adc PTR1
	sta PTR1
	bcc LD72B
	inc PTR1+1
LD72B	ldx PTR1+1
	ldy #0
	rts
LD730	lda FN_EVAL+1
	ora FN_EVAL
	beq LD72B
	lda FCT_VECT+1
	and #4
	lsr a
	tay
	sta FCT_VECT+1
	lda (FN_EVAL),y
	adc LINESEARCH
	sta ACC4+3
	lda LINESEARCH+1
	adc #0
	sta ACC4+4
	lda STRING_BOTTOM
	ldx STRING_BOTTOM+1
	sta ACC4+1
	stx ACC4+2
	jsr LC3FB
	ldy FCT_VECT+1
	iny
	lda ACC4+1
	sta (FN_EVAL),y
	tax
	inc ACC4+2
	lda ACC4+2
	iny
	sta (FN_EVAL),y
	jmp LD654
LD767	lda ACC1+4
	pha
	lda ACC1+3
	pha
	jsr LD000
	jsr LCF08
	pla
	sta PROD_SIGN
	pla
	sta ACC1_EXT
	ldy #0
	lda (PROD_SIGN),y
	clc
	adc (ACC1+3),y
	bcc LD787
	ldx #LC35D-ERRMESSAGES
	jmp LC47E
LD787	jsr LD5A3
	jsr LD7A4
	lda STRWORK
	ldy STRWORK+1
	jsr LD7D4
	jsr LD7B6
	lda PROD_SIGN
	ldy ACC1_EXT
	jsr LD7D4
	jsr LD5F4
	jmp LCF31
LD7A4	ldy #0
	lda (PROD_SIGN),y
	pha
	iny
	lda (PROD_SIGN),y
	tax
	iny
	lda (PROD_SIGN),y
	tay
	pla
LD7B2	stx PTR1
	sty PTR1+1
LD7B6	tay
	beq LD7C3
	pha
LD7BA	dey
	lda (PTR1),y
	sta (TMP_STR),y
	tya
	bne LD7BA
	pla
LD7C3	clc
	adc TMP_STR
	sta TMP_STR
	bcc LD7CC
	inc TMP_STR+1
LD7CC	rts
LD7CD	jsr LCF08
LD7D0	lda ACC1+3
	ldy ACC1+4
LD7D4	sta PTR1
	sty PTR1+1
	jsr LD805
	php
	ldy #0
	lda (PTR1),y
	pha
	iny
	lda (PTR1),y
	tax
	iny
	lda (PTR1),y
	tay
	pla
	plp
	bne LD800
	cpy STRING_BOTTOM+1
	bne LD800
	cpx STRING_BOTTOM
	bne LD800
	pha
	clc
	adc STRING_BOTTOM
	sta STRING_BOTTOM
	bcc LD7FF
	inc STRING_BOTTOM+1
LD7FF	pla
LD800	stx PTR1
	sty PTR1+1
	rts
LD805	cpy OLD_STK_PTR+1
	bne LD815
	cmp OLD_STK_PTR
	bne LD815
	sta STK_PTR
	sbc #3
	sta OLD_STK_PTR
	ldy #0
LD815	rts
CHR_FCT	jsr LD8CB
	txa
	pha
	lda #1
	jsr LD5AB
	pla
	ldy #0
	sta (ACC1+1),y
	pla
	pla
	jmp LD5F4
LEFT_FCT	jsr LD88B
	cmp (STRWORK),y
	tya
LD830	bcc LD836
	lda (STRWORK),y
	tax
	tya
LD836	pha
LD837	txa
LD838	pha
	jsr LD5AB
	lda STRWORK
	ldy STRWORK+1
	jsr LD7D4
	pla
	tay
	pla
	clc
	adc PTR1
	sta PTR1
	bcc LD84F
	inc PTR1+1
LD84F	tya
	jsr LD7B6
	jmp LD5F4
RIGHT_FCT	jsr LD88B
	clc
	sbc (STRWORK),y
	eor #-1
	jmp LD830
MID_FCT	lda #-1
	sta ACC1+4
	jsr TXTCHAR
	cmp #RIGHT_PARENT
	beq LD872
	jsr LD065
	jsr LD8C8
LD872	jsr LD88B
	beq LD8C2
	dex
	txa
	pha
	clc
	ldx #0
	sbc (STRWORK),y
	bcs LD837
	eor #-1
	cmp ACC1+4
	bcc LD838
	lda ACC1+4
	bcs LD838
LD88B	jsr LD05F
	pla
	tay
	pla
	sta FCT_VECT+1
	pla
	pla
	pla
	tax
	pla
	sta STRWORK
	pla
	sta STRWORK+1
	lda FCT_VECT+1
	pha
	tya
	pha
	ldy #0
	txa
	rts
LEN_FCT	jsr LD8AC
	jmp LD4B6
LD8AC	jsr LD7CD
	ldx #0
	stx STR_FLAG
	tay
	rts
ASC_FCT	jsr LD8AC
	beq LD8C2
	ldy #0
	lda (PTR1),y
	tay
	jmp LD4B6
LD8C2	jmp LD336
LD8C5	jsr NEXTCHAR
LD8C8	jsr LCF03
LD8CB	jsr LD2A2
	ldx ACC1+3
	bne LD8C2
	ldx ACC1+4
	jmp TXTCHAR
VAL_FCT	jsr LD8AC
	bne LD8DF
	jmp LDBB2
LD8DF	ldx TXTPTR
	ldy TXTPTR+1
	stx SAVETXTPTR
	sty SAVETXTPTR+1
	ldx PTR1
	stx TXTPTR
	clc
	adc PTR1
	sta PTR2
	ldx PTR1+1
	stx TXTPTR+1
	bcc LD8F7
	inx
LD8F7	stx PTR2+1
	ldy #0
	lda (PTR2),y
	pha
	lda #0
	sta (PTR2),y
	jsr TXTCHAR
	jsr LDFE7
	pla
	ldy #0
	sta (PTR2),y
LD90D	ldx SAVETXTPTR
	ldy SAVETXTPTR+1
	stx TXTPTR
	sty TXTPTR+1
	rts
LD916	jsr LCF03
	jsr LD922
	jsr LD065
	jmp LD8C8
LD922	lda ACC1+5
	bmi LD8C2
	lda ACC1
	cmp #128+17
LD92A	bcs LD8C2
	jsr LDF8C
	lda ACC1+3
	ldy ACC1+4
	sty TMP
	sta TMP+1
	rts
PEEK	lda TMP+1
	pha
	lda TMP
	pha
	jsr LD922
	ldy #0
	lda (TMP),y
	tay
	pla
	sta TMP
	pla
	sta TMP+1
	jmp LD4B6
POKE	jsr LD916
	txa
	ldy #0
	sta (TMP),y
	rts
WAIT	jsr LCF03
	jsr LD922
	ldy TMP
	ldx TMP+1
	lda #2
	jmp LEEC9
DOKE	jsr LE853
	lda TMP
	ldy TMP+1
	sta DOKE_ADDR
	sty DOKE_ADDR+1
	jsr LD065
	jsr LE853
	ldy #1
LD97A	lda TMP,y
	sta (DOKE_ADDR),y
	dey
	bpl LD97A
	rts
DEEK	jsr LD922
	ldy #1
	lda (TMP),y
	pha
	dey
	lda (TMP),y
	tay
	pla
	jmp LDF40
LD993	pha
	lsr a
	lsr a
	lsr a
	lsr a
	jsr LD99C
	pla
LD99C	and #%00001111
	ora #ZERO
	cmp #ZERO+10
	bcc LD9A6
	adc #6
LD9A6	cmp #ZERO
	bne LD9AE
	ldy CONVERT_TMP
	beq LD9B4
LD9AE	sta CONVERT_TMP
	sta NUM_BUFFER+1,x
	inx
LD9B4	rts
HEX	jsr LD922
	ldx #0
	stx CONVERT_TMP
	lda #DIARESIS
	sta NUM_BUFFER
	lda TMP+1
	jsr LD993
	lda TMP
	jsr LD993
	txa
	bne LD9D3
	lda #ZERO
	sta NUM_BUFFER+1,x
	inx
LD9D3	lda #0
	sta NUM_BUFFER+1,x
	jmp LD59B
LD9DB	jmp LD070
LORES	jsr TEXT
	jsr LD8C8
	txa
	beq LD9ED
	dex
	bne LD9DB
	lda #%00001001
	db BYT2
LD9ED	lda #%00001000
	ldx #%00010000
	stx XPOS_SAVE
	ldx #27
LD9F6	pha
	txa
	jsr LDA0C
	lda XPOS_SAVE
	ldy #39
LDA00	sta (LINE_ADDR),y
	dey
	bne LDA00
	pla
	sta (LINE_ADDR),y
	dex
	bne LD9F6
	rts
LDA0C	jsr LF731
	sty LINE_ADDR+1
	clc
	adc #LOW STATUS_LINE
	pha
	sta LINE_ADDR
	lda #HIGH STATUS_LINE
	adc LINE_ADDR+1
	sta LINE_ADDR+1
	pla
	rts
LDA1F	jmp LD8C2
LDA22	jsr LDAF6
	jsr LD8C8
	cpx #40
	bcs LDA1F
	stx XPOS_SAVE
	jsr LD065
	jsr LD8C8
	cpx #27
	bcs LDA1F
	inx
	txa
	jsr LDA0C
	rts
SCRN	jsr LD062
	jsr LDA22
	jsr LD05F
	ldy XPOS_SAVE
	lda (LINE_ADDR),y
	tay
	jmp LD4B6
PLOT	jsr LDA22
	jsr LD065
	jsr LCF17
	bit STR_FLAG
	bpl LDA7B
	jsr LD7D0
	tax
	clc
	lda XPOS_SAVE
	adc LINE_ADDR
	bcc LDA6C
	inc LINE_ADDR+1
LDA6C	sta LINE_ADDR
	ldy #0
	inx
LDA71	dex
	beq LDA84
	lda (PTR1),y
	sta (LINE_ADDR),y
	iny
	bne LDA71
LDA7B	jsr LD8CB
	txa
	ldy XPOS_SAVE
	sta (LINE_ADDR),y
LDA84	rts
REPEAT	bne LDA9E
	lda #6/2
	jsr LC437
LDA8C	lda TXTPTR+1
	pha
	lda TXTPTR
	pha
	lda LINENUM+1
	pha
	lda LINENUM
	pha
	lda #TOKEN_REPEAT
	pha
	jmp LC8C1
LDA9E	jmp LD070
UNTIL	lda #-1
	sta VAR_ADDR2+1
	jsr LC3C6
	txs
	cmp #TOKEN_REPEAT
	beq LDAB2
	ldx #LC39D-ERRMESSAGES
	jmp LC47E
LDAB2	cpy #(TOKEN_PULL-128)*2
	bne LDABB
	sty ACC1
	tya
	bne LDAC1
LDABB	jsr TXTCHAR
	jsr LCF17
LDAC1	pla
	lda ACC1
	beq LDACB
	pla
	pla
	pla
	pla
	rts
LDACB	pla
	sta LINENUM
	pla
	sta LINENUM+1
	pla
	sta TXTPTR
	pla
	sta TXTPTR+1
	jmp LDA8C
KEY_FCT
    jsr KBD_VECT ; PATCH (jsr LEB78)
	php
	pha
	bpl LDAE4
	lda #1
	db BYT2
LDAE4	lda #0
	jsr LD5AB
	pla
	plp
	bpl LDAF1
	ldy #0
	sta (ACC1+1),y
LDAF1	pla
	pla
	jmp LD5F4
LDAF6	lda MEMORY_MODE
	and #%00000001
	beq LDB02
	ldx #LC34B-ERRMESSAGES
	jmp LC47E
LDB02	rts
LDB03	rts
LDB04	lda #LOW LE205
	ldy #HIGH LE205
	jmp LDB22
LDB0B	jsr LDD51
LDB0E	lda ACC1+5
	eor #-1
	sta ACC1+5
	eor ACC2+5
	sta PROD_SIGN
	lda ACC1
	jmp LDB25
LDB1D	jsr LDC54
	bcc LDB5E
LDB22	jsr LDD51
LDB25	bne LDB2A
	jmp LDED5
LDB2A	ldx ACC1_EXT
	stx FCT_VECT+2
	ldx #ACC2
	lda ACC2
LDB32	tay
	beq LDB03
	sec
	sbc ACC1
	beq LDB5E
	bcc LDB4E
	sty ACC1
	ldy ACC2+5
	sty ACC1+5
	eor #-1
	adc #0
	ldy #0
	sty FCT_VECT+2
	ldx #ACC1
	bne LDB52
LDB4E	ldy #0
	sty ACC1_EXT
LDB52	cmp #-7
	bmi LDB1D
	tay
	lda ACC1_EXT
	lsr 1,x
	jsr LDC6B
LDB5E	bit PROD_SIGN
	bpl LDBB9
	ldy #ACC1
	cpx #ACC2
	beq LDB6A
	ldy #ACC2
LDB6A	sec
	eor #-1
	adc FCT_VECT+2
	sta ACC1_EXT
	lda 4,y
	sbc 4,x
	sta ACC1+4
	lda 3,y
	sbc 3,x
	sta ACC1+3
	lda 2,y
	sbc 2,x
	sta ACC1+2
	lda 1,y
	sbc 1,x
	sta ACC1+1
LDB8D	bcs LDB92
	jsr LDC02
LDB92	ldy #0
	tya
	clc
LDB96	ldx ACC1+1
	bne LDBE4
	ldx ACC1+2
	stx ACC1+1
	ldx ACC1+3
	stx ACC1+2
	ldx ACC1+4
	stx ACC1+3
	ldx ACC1_EXT
	stx ACC1+4
	sty ACC1_EXT
	adc #8
	cmp #5*8
	bne LDB96
LDBB2	lda #0
LDBB4	sta ACC1
LDBB6	sta ACC1+5
	rts
LDBB9	adc FCT_VECT+2
	sta ACC1_EXT
	lda ACC1+4
	adc ACC2+4
	sta ACC1+4
	lda ACC1+3
	adc ACC2+3
	sta ACC1+3
	lda ACC1+2
	adc ACC2+2
	sta ACC1+2
	lda ACC1+1
	adc ACC2+1
	sta ACC1+1
	jmp LDBF1
LDBD8	adc #1
	asl ACC1_EXT
	rol ACC1+4
	rol ACC1+3
	rol ACC1+2
	rol ACC1+1
LDBE4	bpl LDBD8
	sec
	sbc ACC1
	bcs LDBB2
	eor #-1
	adc #1
	sta ACC1
LDBF1	bcc LDC01
LDBF3	inc ACC1
	beq LDC39
	ror ACC1+1
	ror ACC1+2
	ror ACC1+3
	ror ACC1+4
	ror ACC1_EXT
LDC01	rts
LDC02	lda ACC1+5
	eor #-1
	sta ACC1+5
LDC08	lda ACC1+1
	eor #-1
	sta ACC1+1
	lda ACC1+2
	eor #-1
	sta ACC1+2
	lda ACC1+3
	eor #-1
	sta ACC1+3
	lda ACC1+4
	eor #-1
	sta ACC1+4
	lda ACC1_EXT
	eor #-1
	sta ACC1_EXT
	inc ACC1_EXT
	bne LDC38
LDC2A	inc ACC1+4
	bne LDC38
	inc ACC1+3
	bne LDC38
	inc ACC1+2
	bne LDC38
	inc ACC1+1
LDC38	rts
LDC39	ldx #LC2ED-ERRMESSAGES
	jmp LC47E
LDC3E	ldx #ACC3-1
LDC40	ldy 4,x
	sty ACC1_EXT
	ldy 3,x
	sty 4,x
	ldy 2,x
	sty 3,x
	ldy 1,x
	sty 2,x
	ldy ACC1_JUSTIF
	sty 1,x
LDC54	adc #8
	bmi LDC40
	beq LDC40
	sbc #8
	tay
	lda ACC1_EXT
	bcs LDC75
LDC61	asl 1,x
	bcc LDC67
	inc 1,x
LDC67	ror 1,x
	ror 1,x
LDC6B	ror 2,x
	ror 3,x
	ror 4,x
	ror a
	iny
	bne LDC61
LDC75	clc
	rts
LDC77	db $82,$13,$5D,$8D,$DE
LDC7C	db $82,$49,$0F,$DA,$9E
LDC81	db $81,$00,$00,$00,$00
LDC86	db $03
	db $7F,$5E,$56,$CB,$79
	db $80,$13,$9B,$0B,$64
	db $80,$76,$38,$93,$16
	db $82,$38,$AA,$3B,$20
LDC9B	db $80,$35,$04,$F3,$34
LDCA0	db $81,$35,$04,$F3,$34
LDCA5	db $80,$80,$00,$00,$00
LDCAA	db $80,$31,$72,$17,$F8
LN	jsr LDF13
	beq LDCB6
	bpl LDCB9
LDCB6	jmp LD336
LDCB9	lda ACC1
	sbc #128-1
	pha
	lda #128
	sta ACC1
	lda #LOW LDC9B
	ldy #HIGH LDC9B
	jsr LDB22
	lda #LOW LDCA0
	ldy #HIGH LDCA0
	jsr LDDE4
	lda #LOW LDC81
	ldy #HIGH LDC81
	jsr LDB0B
	lda #LOW LDC86
	ldy #HIGH LDC86
	jsr LE2FD
	lda #LOW LDCA5
	ldy #HIGH LDCA5
	jsr LDB22
	pla
	jsr LE076
	lda #LOW LDCAA
	ldy #HIGH LDCAA
LDCED	jsr LDD51
LDCF0	bne LDCF5
	jmp LDD50
LDCF5	jsr LDD7C
	lda #0
	sta ACC3
	sta ACC3+1
	sta ACC3+2
	sta ACC3+3
	lda ACC1_EXT
	jsr LDD1E
	lda ACC1+4
	jsr LDD1E
	lda ACC1+3
	jsr LDD1E
	lda ACC1+2
	jsr LDD1E
	lda ACC1+1
	jsr LDD23
	jmp LDE64
LDD1E	bne LDD23
	jmp LDC3E
LDD23	lsr a
	ora #%10000000
LDD26	tay
	bcc LDD42
	clc
	lda ACC3+3
	adc ACC2+4
	sta ACC3+3
	lda ACC3+2
	adc ACC2+3
	sta ACC3+2
	lda ACC3+1
	adc ACC2+2
	sta ACC3+1
	lda ACC3
	adc ACC2+1
	sta ACC3
LDD42	ror ACC3
	ror ACC3+1
	ror ACC3+2
	ror ACC3+3
	ror ACC1_EXT
	tya
	lsr a
	bne LDD26
LDD50	rts
LDD51	sta PTR1
	sty PTR1+1
	ldy #4
	lda (PTR1),y
	sta ACC2+4
	dey
	lda (PTR1),y
	sta ACC2+3
	dey
	lda (PTR1),y
	sta ACC2+2
	dey
	lda (PTR1),y
	sta ACC2+5
	eor ACC1+5
	sta PROD_SIGN
	lda ACC2+5
	ora #%10000000
	sta ACC2+1
	dey
	lda (PTR1),y
	sta ACC2
	lda ACC1
	rts
LDD7C	lda ACC2
LDD7E	beq LDD9F
	clc
	adc ACC1
	bcc LDD89
	bmi LDDA4
	clc
	db BYT2
LDD89	bpl LDD9F
	adc #128
	sta ACC1
	bne LDD94
	jmp LDBB6
LDD94	lda PROD_SIGN
	sta ACC1+5
	rts
LDD99	lda ACC1+5
	eor #-1
	bmi LDDA4
LDD9F	pla
	pla
	jmp LDBB2
LDDA4	jmp LDC39
LDDA7	jsr LDEE5
	tax
	beq LDDBD
	clc
	adc #2
	bcs LDDA4
	ldx #0
	stx PROD_SIGN
	jsr LDB32
	inc ACC1
	beq LDDA4
LDDBD	rts
LDDBE	db $84,$20,$00,$00,$00
LDDC3	jsr LDEE5
	lda #LOW LDDBE
	ldy #HIGH LDDBE
	ldx #0
LDDCC	stx PROD_SIGN
	jsr LDE7B
	jmp LDDE7
LOG_FCT	jsr LN
	jsr LDEE5
	lda #LOW LDC77
	ldy #HIGH LDC77
	jsr LDE7B
	jmp LDDE7
LDDE4	jsr LDD51
LDDE7	beq LDE5F
	jsr LDEF4
	lda #0
	sec
	sbc ACC1
	sta ACC1
	jsr LDD7C
	inc ACC1
	beq LDDA4
	ldx #-4
	lda #%00000001
LDDFE	ldy ACC2+1
	cpy ACC1+1
	bne LDE14
	ldy ACC2+2
	cpy ACC1+2
	bne LDE14
	ldy ACC2+3
	cpy ACC1+3
	bne LDE14
	ldy ACC2+4
	cpy ACC1+4
LDE14	php
	rol a
	bcc LDE21
	inx
	sta ACC3+3,x
	beq LDE4F
	bpl LDE53
	lda #%00000001
LDE21	plp
	bcs LDE32
LDE24	asl ACC2+4
	rol ACC2+3
	rol ACC2+2
	rol ACC2+1
	bcs LDE14
	bmi LDDFE
	bpl LDE14
LDE32	tay
	lda ACC2+4
	sbc ACC1+4
	sta ACC2+4
	lda ACC2+3
	sbc ACC1+3
	sta ACC2+3
	lda ACC2+2
	sbc ACC1+2
	sta ACC2+2
	lda ACC2+1
	sbc ACC1+1
	sta ACC2+1
	tya
	jmp LDE24
LDE4F	lda #%01000000
	bne LDE21
LDE53	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	sta ACC1_EXT
	plp
	jmp LDE64
LDE5F	ldx #LC32D-ERRMESSAGES
	jmp LC47E
LDE64	lda ACC3
	sta ACC1+1
	lda ACC3+1
	sta ACC1+2
	lda ACC3+2
	sta ACC1+3
	lda ACC3+3
	sta ACC1+4
	jmp LDB92
PI_FCT	lda #LOW LDC7C
	ldy #HIGH LDC7C
LDE7B	sta PTR1
	sty PTR1+1
	ldy #4
	lda (PTR1),y
	sta ACC1+4
	dey
	lda (PTR1),y
	sta ACC1+3
	dey
	lda (PTR1),y
	sta ACC1+2
	dey
	lda (PTR1),y
	sta ACC1+5
	ora #%10000000
	sta ACC1+1
	dey
	lda (PTR1),y
	sta ACC1
	sty ACC1_EXT
	rts
LDEA0	ldx #ACC5
	db BYT2
LDEA3	ldx #ACC4
	ldy #HIGH ACC4
	beq LDEAD
LDEA9	ldx VAR_ADDR2
	ldy VAR_ADDR2+1
LDEAD	jsr LDEF4
	stx PTR1
	sty PTR1+1
	ldy #4
	lda ACC1+4
	sta (PTR1),y
	dey
	lda ACC1+3
	sta (PTR1),y
	dey
	lda ACC1+2
	sta (PTR1),y
	dey
	lda ACC1+5
	ora #%01111111
	and ACC1+1
	sta (PTR1),y
	dey
	lda ACC1
	sta (PTR1),y
	sty ACC1_EXT
	rts
LDED5	lda ACC2+5
LDED7	sta ACC1+5
	ldx #5
LDEDB	lda ACC1_JUSTIF,x
	sta LINESEARCH+1,x
	dex
	bne LDEDB
	stx ACC1_EXT
	rts
LDEE5	jsr LDEF4
LDEE8	ldx #6
LDEEA	lda LINESEARCH+1,x
	sta ACC1_JUSTIF,x
	dex
	bne LDEEA
	stx ACC1_EXT
LDEF3	rts
LDEF4	lda ACC1
	beq LDEF3
	asl ACC1_EXT
	bcc LDEF3
LDEFC	jsr LDC2A
	bne LDEF3
	jmp LDBF3
	db $20
	db $A9
	db $D2
	db $46
	db $D4
	db $B0
	db $04
FALSE	lda #0
	beq LDF24
TRUE	lda #-1
	bmi LDF24
LDF13	lda ACC1
	beq LDF20
LDF17	lda ACC1+5
LDF19	rol a
	lda #-1
	bcs LDF20
	lda #1
LDF20	rts
SGN	jsr LDF13
LDF24	sta ACC1+1
	lda #0
	sta ACC1+2
	ldx #128+8
LDF2C	lda ACC1+1
	eor #-1
	rol a
LDF31	lda #0
	sta ACC1+4
	sta ACC1+3
	stx ACC1
	sta ACC1_EXT
	sta ACC1+5
	jmp LDB8D
LDF40	sta ACC1+1
	sty ACC1+2
	ldx #128+16
	sec
	bcs LDF31
ABS_FCT	lsr ACC1+5
	rts
LDF4C	sta PTR2
LDF4E	sty PTR2+1
	ldy #0
	lda (PTR2),y
	iny
	tax
	beq LDF13
	lda (PTR2),y
	eor ACC1+5
	bmi LDF17
	cpx ACC1
	bne LDF83
	lda (PTR2),y
	ora #%10000000
	cmp ACC1+1
	bne LDF83
	iny
	lda (PTR2),y
	cmp ACC1+2
	bne LDF83
	iny
	lda (PTR2),y
	cmp ACC1+3
	bne LDF83
	iny
	lda #%01111111
	cmp ACC1_EXT
	lda (PTR2),y
	sbc ACC1+4
	beq LDFAB
LDF83	lda ACC1+5
	bcc LDF89
	eor #-1
LDF89	jmp LDF19
LDF8C	lda ACC1
	beq LDFDA
	sec
	sbc #128+32
	bit ACC1+5
	bpl LDFA0
	tax
	lda #-1
	sta ACC1_JUSTIF
	jsr LDC08
	txa
LDFA0	ldx #ACC1
	cmp #-7
	bpl LDFAC
	jsr LDC54
	sty ACC1_JUSTIF
LDFAB	rts
LDFAC	tay
	lda ACC1+5
	and #%10000000
	lsr ACC1+1
	ora ACC1+1
	sta ACC1+1
	jsr LDC6B
	sty ACC1_JUSTIF
	rts
INT	lda ACC1
	cmp #128+32
	bcs LDFE3
	jsr LDF8C
	sty ACC1_EXT
	lda ACC1+5
	sty ACC1+5
	eor #%10000000
	rol a
	lda #128+32
	sta ACC1
	lda ACC1+4
	sta TERMINATOR1
	jmp LDB8D
LDFDA	sta ACC1+1
	sta ACC1+2
	sta ACC1+3
	sta ACC1+4
	tay
LDFE3	rts
LDFE4	jmp LE981
LDFE7	ldy #0
	ldx #10
LDFEB	sty ACC5+1,x
	dex
	bpl LDFEB
	bcc LE005
	cmp #DIARESIS
	beq LDFE4
	cmp #MINUS
	bne LDFFE
	stx EVAL_WORK
	beq LE002
LDFFE	cmp #PLUS
	bne LE007
LE002	jsr NEXTCHAR
LE005	bcc LE062
LE007	cmp #DOT
	beq LE039
	cmp #LETTER_E
	bne LE03F
	jsr NEXTCHAR
	bcc LE02B
	cmp #TOKEN_MINUS
	beq LE026
	cmp #MINUS
	beq LE026
	cmp #TOKEN_PLUS
	beq LE028
	cmp #PLUS
	beq LE028
	bne LE02D
LE026	ror LINESEARCH+1
LE028	jsr NEXTCHAR
LE02B	bcc LE089
LE02D	bit LINESEARCH+1
	bpl LE03F
	lda #0
	sec
	sbc ACC5+2
	jmp LE041
LE039	ror LINESEARCH
	bit LINESEARCH
	bvc LE002
LE03F	lda ACC5+2
LE041	sec
	sbc ACC5+1
	sta ACC5+2
	beq LE05A
	bpl LE053
LE04A	jsr LDDC3
	inc ACC5+2
	bne LE04A
	beq LE05A
LE053	jsr LDDA7
	dec ACC5+2
	bne LE053
LE05A	lda EVAL_WORK
	bmi LE05F
	rts
LE05F	jmp LE271
LE062	pha
	bit LINESEARCH
	bpl LE069
	inc ACC5+1
LE069	jsr LDDA7
	pla
	sec
	sbc #ZERO
	jsr LE076
	jmp LE002
LE076	pha
	jsr LDEE5
	pla
	jsr LDF24
	lda ACC2+5
	eor ACC1+5
	sta PROD_SIGN
	ldx ACC1
	jmp LDB25
LE089	lda ACC5+2
	cmp #10
	bcc LE098
	lda #100
	bit LINESEARCH+1
	bmi LE0A6
	jmp LDC39
LE098	asl a
	asl a
	clc
	adc ACC5+2
	asl a
	clc
	ldy #0
	adc (TXTPTR),y
	sec
	sbc #ZERO
LE0A6	sta ACC5+2
	jmp LE028
LE0AB	db $9B,$3E,$BC,$1F,$FD
LE0B0	db $9E,$6E,$6B,$27,$FD
LE0B5	db $9E,$6E,$6B,$28,$00
LE0BA	lda #LOW LC3AD
	ldy #HIGH LC3AD
	jsr LE0D2
	lda LINENUM+1
	ldx LINENUM
LE0C5	sta ACC1+1
	stx ACC1+2
	ldx #128+16
	sec
	jsr LDF31
	jsr LE0D5
LE0D2	jmp LCCB0
LE0D5	ldy #1
LE0D7	lda #SPACE
	bit ACC1+5
	bpl LE0DF
	lda #MINUS
LE0DF	sta NUM_BUFFER,y
	sta ACC1+5
	sty SAVETXTPTR
	iny
	lda #ZERO
	ldx ACC1
	bne LE0F0
	jmp LE1F8
LE0F0	lda #0
	cpx #128
	beq LE0F8
	bcs LE101
LE0F8	lda #LOW LE0B5
	ldy #HIGH LE0B5
	jsr LDCED
	lda #-10+1
LE101	sta ACC5+1
LE103	lda #LOW LE0B0
	ldy #HIGH LE0B0
	jsr LDF4C
	beq LE12A
	bpl LE120
LE10E	lda #LOW LE0AB
	ldy #HIGH LE0AB
	jsr LDF4C
	beq LE119
	bpl LE127
LE119	jsr LDDA7
	dec ACC5+1
	bne LE10E
LE120	jsr LDDC3
	inc ACC5+1
	bne LE103
LE127	jsr LDB04
LE12A	jsr LDF8C
	ldx #1
	lda ACC5+1
	clc
	adc #10
	bmi LE13F
	cmp #11
	bcs LE140
	adc #-1
	tax
	lda #2
LE13F	sec
LE140	sbc #2
	sta ACC5+2
	stx ACC5+1
	txa
	beq LE14B
	bpl LE15E
LE14B	ldy SAVETXTPTR
	lda #DOT
	iny
	sta NUM_BUFFER,y
	txa
	beq LE15C
	lda #ZERO
	iny
	sta NUM_BUFFER,y
LE15C	sty SAVETXTPTR
LE15E	ldy #0
	ldx #128
LE162	lda ACC1+4
	clc
	adc LE20A+3,y
	sta ACC1+4
	lda ACC1+3
	adc LE20A+2,y
	sta ACC1+3
	lda ACC1+2
	adc LE20A+1,y
	sta ACC1+2
	lda ACC1+1
	adc LE20A,y
	sta ACC1+1
	inx
	bcs LE186
	bpl LE162
	bmi LE188
LE186	bmi LE162
LE188	txa
	bcc LE18F
	eor #-1
	adc #10
LE18F	adc #ZERO-1
	iny
	iny
	iny
	iny
	sty VAR_ADDR
	ldy SAVETXTPTR
	iny
	tax
	and #%01111111
	sta NUM_BUFFER,y
	dec ACC5+1
	bne LE1AA
	lda #DOT
	iny
	sta NUM_BUFFER,y
LE1AA	sty SAVETXTPTR
	ldy VAR_ADDR
	txa
	eor #-1
	and #%10000000
	tax
	cpy #9*4
	bne LE162
	ldy SAVETXTPTR
LE1BA	lda NUM_BUFFER,y
	dey
	cmp #ZERO
	beq LE1BA
	cmp #DOT
	beq LE1C7
	iny
LE1C7	lda #PLUS
	ldx ACC5+2
	beq LE1FB
	bpl LE1D7
	lda #0
	sec
	sbc ACC5+2
	tax
	lda #MINUS
LE1D7	sta STACK+1,y
	lda #LETTER_E
	sta NUM_BUFFER+1,y
	txa
	ldx #ZERO-1
	sec
LE1E3	inx
	sbc #10
	bcs LE1E3
	adc #ZERO+10
	sta STACK+3,y
	txa
	sta STACK+2,y
	lda #0
	sta STACK+4,y
	beq LE200
LE1F8	sta NUM_BUFFER,y
LE1FB	lda #0
	sta NUM_BUFFER+1,y
LE200	lda #LOW (NUM_BUFFER+1)
	ldy #HIGH (NUM_BUFFER+1)
	rts
LE205	db $80,$00,$00,$00,$00
LE20A	db $FA,$0A,$1F,$00
	db $00,$98,$96,$80
	db $FF,$F0,$BD,$C0
	db $00,$01,$86,$A0
	db $FF,$FF,$D8,$F0
	db $00,$00,$03,$E8
	db $FF,$FF,$FF,$9C
	db $00,$00,$00,$0A
	db $FF,$FF,$FF,$FF
SQR	jsr LDEE5
	lda #LOW LE205
	ldy #HIGH LE205
	jsr LDE7B
LE238	beq EXP
	lda ACC2
	bne LE241
	jmp LDBB4
LE241	ldx #LOW FN_EVAL
	ldy #HIGH FN_EVAL
	jsr LDEAD
	lda ACC2+5
	bpl LE25B
	jsr INT
	lda #LOW FN_EVAL
	ldy #HIGH FN_EVAL
	jsr LDF4C
	bne LE25B
	tya
	ldy TERMINATOR1
LE25B	jsr LDED7
	tya
	pha
	jsr LN
	lda #LOW FN_EVAL
	ldy #HIGH FN_EVAL
	jsr LDCED
	jsr EXP
	pla
	lsr a
	bcc LE27B
LE271	lda ACC1
	beq LE27B
	lda ACC1+5
	eor #-1
	sta ACC1+5
LE27B	rts
LE27C	db $81,$38,$AA,$3B,$29
LE281	db $07
	db $71,$34,$58,$3E,$56
	db $74,$16,$7E,$B3,$1B
	db $77,$2F,$EE,$E3,$85
	db $7A,$1D,$84,$1C,$2A
	db $7C,$63,$59,$58,$0A
	db $7E,$75,$FD,$E7,$C6
	db $80,$31,$72,$18,$10
	db $81,$00,$00,$00,$00
EXP	lda #LOW LE27C
	ldy #HIGH LE27C
	jsr LDCED
	lda ACC1_EXT
	adc #80
	bcc LE2BA
	jsr LDEFC
LE2BA	sta FCT_VECT+2
	jsr LDEE8
	lda ACC1
	cmp #128+8
	bcc LE2C8
LE2C5	jsr LDD99
LE2C8	jsr INT
	lda TERMINATOR1
	clc
	adc #129
	beq LE2C5
	sec
	sbc #1
	pha
	ldx #5
LE2D8	lda ACC2,x
	ldy ACC1,x
	sta ACC1,x
	sty ACC2,x
	dex
	bpl LE2D8
	lda FCT_VECT+2
	sta ACC1_EXT
	jsr LDB0E
	jsr LE271
	lda #LOW LE281
	ldy #HIGH LE281
	jsr LE313
	lda #0
	sta PROD_SIGN
	pla
	jsr LDD7E
	rts
LE2FD	sta SAVETXTPTR
	sty SAVETXTPTR+1
	jsr LDEA3
	lda #LOW ACC4
	jsr LDCED
	jsr LE317
	lda #LOW ACC4
	ldy #HIGH ACC4
	jmp LDCED
LE313	sta SAVETXTPTR
	sty SAVETXTPTR+1
LE317	jsr LDEA0
	lda (SAVETXTPTR),y
	sta EVAL_WORK
	ldy SAVETXTPTR
	iny
	tya
	bne LE326
	inc SAVETXTPTR+1
LE326	sta SAVETXTPTR
	ldy SAVETXTPTR+1
LE32A	jsr LDCED
	lda SAVETXTPTR
	ldy SAVETXTPTR+1
	clc
	adc #5
	bcc LE337
	iny
LE337	sta SAVETXTPTR
	sty SAVETXTPTR+1
	jsr LDB22
	lda #LOW ACC5
	ldy #HIGH ACC5
	dec EVAL_WORK
	bne LE32A
LE346	rts
LE347	db $98,$35,$44,$7A
LE34B	db $68,$28,$B1,$46
RND	jsr LDF13
	tax
	bmi LE36D
	lda #LOW RND_VALUE
	ldy #HIGH RND_VALUE
	jsr LDE7B
	txa
	beq LE346
	lda #LOW LE347
	ldy #HIGH LE347
	jsr LDCED
	lda #LOW LE34B
	ldy #HIGH LE34B
	jsr LDB22
LE36D	ldx ACC1+4
	lda ACC1+1
	sta ACC1+4
	stx ACC1+1
	lda #0
	sta ACC1+5
	lda ACC1
	sta ACC1_EXT
	lda #128
	sta ACC1
	jsr LDB92
	ldx #LOW RND_VALUE
	ldy #HIGH RND_VALUE
LE388	jmp LDEAD
COS_FCT	lda #LOW LE407
	ldy #HIGH LE407
	jsr LDB22
SIN_FCT	jsr LDEE5
	lda #LOW LE40C
	ldy #HIGH LE40C
	ldx ACC2+5
	jsr LDDCC
	jsr LDEE5
	jsr INT
	lda #0
	sta PROD_SIGN
	jsr LDB0E
	lda #LOW LE411
	ldy #HIGH LE411
	jsr LDB0B
	lda ACC1+5
	pha
	bpl LE3C4
	jsr LDB04
	lda ACC1+5
	bmi LE3C7
	lda COMPARECODE
	eor #-1
	sta COMPARECODE
LE3C4	jsr LE271
LE3C7	lda #LOW LE411
	ldy #HIGH LE411
	jsr LDB22
	pla
	bpl LE3D4
	jsr LE271
LE3D4	lda #LOW LE416
	ldy #HIGH LE416
	jmp LE2FD
TAN_FCT	jsr LDEA3
	lda #0
	sta COMPARECODE
	jsr SIN_FCT
	ldx #LOW FN_EVAL
	ldy #HIGH FN_EVAL
	jsr LE388
	lda #LOW ACC4
	ldy #HIGH ACC4
	jsr LDE7B
	lda #0
	sta ACC1+5
	lda COMPARECODE
	jsr LE403
	lda #LOW FN_EVAL
	ldy #HIGH FN_EVAL
	jmp LDDE4
LE403	pha
	jmp LE3C4
LE407	db $81,$49,$0F,$DA,$A2
LE40C	db $83,$49,$0F,$DA,$A2
LE411	db $7F,$00,$00,$00,$00
LE416	db $05
	db $84,$E6,$1A,$2D,$1B
	db $86,$28,$07,$FB,$F8
	db $87,$99,$68,$89,$01
	db $87,$23,$35,$DF,$E1
	db $86,$A5,$5D,$E7,$28
	db $83,$49,$0F,$DA,$A2

	db $A1,$54,$46,$8F,$13,$8F,$52,$43,$89,$CD	; copyright
ATN_FCT	lda ACC1+5
	pha
	bpl LE447
	jsr LE271
LE447	lda ACC1
	pha
	cmp #129
	bcc LE455
	lda #LOW LDC81
	ldy #HIGH LDC81
	jsr LDDE4
LE455	lda #LOW LE46F
	ldy #HIGH LE46F
	jsr LE2FD
	pla
	cmp #129
	bcc LE468
	lda #LOW LE407
	ldy #HIGH LE407
	jsr LDB0B
LE468	pla
	bpl LE46E
	jmp LE271
LE46E	rts
LE46F	db $0B
	db $76,$B3,$83,$BD,$D3
	db $79,$1E,$F4,$A6,$F5
	db $7B,$83,$FC,$B0,$10
	db $7C,$0C,$1F,$67,$CA
	db $7C,$DE,$53,$CB,$C1
	db $7D,$14,$64,$70,$4C
	db $7D,$B7,$EA,$51,$7A
	db $7D,$63,$30,$88,$7E
	db $7E,$92,$44,$99,$3A
	db $7E,$4C,$CC,$91,$C7
	db $7F,$AA,$AA,$AA,$13
	db $81,$00,$00,$00,$00
LE4AC	jsr LE735
LE4AF	jsr LE6C9
	cmp #%00100100
	bne LE4AF
	stx TAPE_ERRORS
	ldx #9
LE4BB	jsr LE6C9
	sta K7HEADER-1,x
	dex
	bne LE4BB
LE4C4	jsr LE6C9
	beq LE4D3
	cpx #16
	bcs LE4C4
	sta FOUNDNAME,x
	inx
	bne LE4C4
LE4D3	sta FOUNDNAME,x
	jsr LE594
	jsr LE790
	txa
	bne LE4AC
	rts
LE4E0	lda PROGSTART
	ldy PROGSTART+1
	sta TMP
	sty TMP+1
	ldy #0
LE4EC	jsr LE6C9
	ldx VERIFY_FLAG
	bne LE4F9
	sta (TMP),y
	jmp LE505
LE4F9	cmp (TMP),y
	beq LE505
	inc ERROR_COUNT
	bne LE505
	inc ERROR_COUNT+1
LE505	jsr LE56C
	bcc LE4EC
	rts
LE50B	db $10,$07
	string "Searching .."
	db 0
LE51A	db $10,$07
	string "Loading .."
	db 0
LE527	db $0A,$0D
	string "Errors found"
	db $0D,$0A,0
LE538	db $10,$07
	string "Found .."
	db 0
LE543	db $10,$07
	string "Verifying .."
	db 0
LE552	string " Verify errors detected"
	db $0D,$0A,0
LE56C	lda TMP
	cmp PROGEND
	lda TMP+1
	sbc PROGEND+1
	inc TMP
	bne LE57C
	inc TMP+1
LE57C	rts
LE57D	lda #LOW LE50B
	ldy #HIGH LE50B
	jsr LE5EA
	rts
LE585	lda #LOW LE645
	ldy #HIGH LE645
	jsr LE5EA
	lda #LOW PROGNAME
	ldy #HIGH PROGNAME
	jsr LE5B6
	rts
LE594	lda #LOW LE538
	ldy #HIGH LE538
	jmp LE5AB
LE59B	lda VERIFY_FLAG
	bne LE5A7
	lda #LOW LE51A
	ldy #HIGH LE51A
	jmp LE5AB
LE5A7	lda #LOW LE543
	ldy #HIGH LE543
LE5AB	jsr LE5EA
	lda #LOW FOUNDNAME
	ldy #HIGH FOUNDNAME
	jsr LE5B6
	rts
LE5B6	jsr LF865
	inx
	ldy #0
	sty TYPESTRING+1
	lda AUTO_FLAG
	beq LE5D7
	iny
	bit AUTO_FLAG
	bmi LE5D7
	iny
	bit ARRAY_STRFLAG
	bmi LE5D7
	iny
	bit ARRAY_INTFLAG
	bmi LE5D7
	iny
LE5D7	lda LE5E5,y
	sta TYPESTRING
	lda #LOW TYPESTRING
	ldy #HIGH TYPESTRING
	jsr LF865
	rts
LE5E5	db 'B','C','S','I','R'
LE5EA	jsr LE5F5
	ldx #0
	jsr LF865
	inx
	inx
	rts
LE5F5	pha
	lda HIRESFLAG
	bne LE605
	ldx #40-6
	lda #%00010000
LE5FF	sta STATUS_LINE,x
	dex
	bpl LE5FF
LE605	pla
	rts
LE607	jsr LE75A
	lda #%00100100
	jsr LE65E
	ldx #9
LE611	lda K7HEADER-1,x
	jsr LE65E
	dex
	bne LE611
LE61A	lda PROGNAME,x
	beq LE625
	jsr LE65E
	inx
	bne LE61A
LE625	jsr LE65E
	ldx #0
LE62A	dex
	bne LE62A
	rts
LE62E	lda PROGSTART
	ldy PROGSTART+1
	sta TMP
	sty TMP+1
	ldy #0
LE63A	lda (TMP),y
	jsr LE65E
	jsr LE56C
	bcc LE63A
	rts
LE645	db $10,$07
	string "Saving .."
	db 0
LE651	lda TAPE_ERRORS
	beq LE65D
	lda #LOW LE527
	ldy #HIGH LE527
	jsr LCCB0
LE65D	rts
LE65E	sta CONVERT_TMP
	txa
	pha
	tya
	pha
	jsr LE6C0
	clc
	ldy #9
	lda #0
	beq LE674
LE66E	lsr CONVERT_TMP
	php
	adc #0
	plp
LE674	jsr LE68B
	dey
	bne LE66E
	eor #%00000001
	lsr a
	ldy #4
LE67F	jsr LE68B
	sec
	dey
	bne LE67F
	pla
	tay
	pla
	tax
	rts
LE68B	pha
	php
	lda FAST_FLAG
	bne LE69C
	sec
	jsr LE6B2
	plp
	jsr LE6B2
	pla
	rts
LE69C	jsr LE6B2
	ldx #16-1
	plp
	bcs LE6A6
	ldx #8-1
LE6A6	jsr LE6AB
	pla
	rts
LE6AB	jsr LE6C0
	dex
	bne LE6AB
	rts
LE6B2	lda #LOW 208
	ldx #HIGH 208
	bcs LE6BA
	asl a
	inx
LE6BA	sta VIA_T1L
	stx VIA_T1L+1
LE6C0	lda VIA_T1C
LE6C3	bit VIA_IFR
	bvc LE6C3
	rts
LE6C9	tya
	pha
	txa
	pha
	jsr LE71C
LE6D0	jsr LE71C
	bcs LE6D0
	jsr LE6FF
	bcs LE6F0
	lda #0
	ldy #8
LE6DE	jsr LE6FC
	php
	ror CONVERT_TMP
	plp
	adc #0
	dey
	bne LE6DE
	jsr LE6FC
	sbc #0
	lsr a
LE6F0	bcc LE6F5
	rol TAPE_ERRORS
LE6F5	pla
	tax
	pla
	tay
	lda CONVERT_TMP
	rts
LE6FC	jsr LE71C
LE6FF	pha
	lda FAST_FLAG
	beq LE71A
	jsr LE71C
	ldx #2
	bcc LE70E
	ldx #6
LE70E	lda #0
LE710	jsr LE71C
	adc #0
	dex
	bne LE710
	cmp #4
LE71A	pla
	rts
LE71C	pha
	lda VIA_IRB
LE720	lda VIA_IFR
	and #%00010000
	beq LE720
	lda VIA_T2C+1
	pha
	lda #-1
	sta VIA_T2C+1
	pla
	cmp #-2
	pla
	rts
LE735	jsr LE6FC
	ror CONVERT_TMP
	lda #%00010110
	cmp CONVERT_TMP
	bne LE735
	lda FAST_FLAG
	beq LE74D
	jsr LE71C
LE748	jsr LE71C
	bcs LE748
LE74D	ldx #3
LE74F	jsr LE6C9
	cmp #%00010110
	bne LE735
	dex
	bne LE74F
	rts
LE75A	ldx #HIGH 515
	ldy #LOW 515
LE75E	lda #%00010110
	jsr LE65E
	dey
	bne LE75E
	dex
	bne LE75E
	rts
LE76A	jsr LEE1A
	ldy #6
	sei
LE770	ldx LE782,y
	lda LE789,y
	sta VIA,x
	dey
	bpl LE770
	lda #%01000000
	sta VIA_ORB
	rts
LE782	db $05,$04,$0B,$02,$0C,$08,$0E
LE789	db $00,$D0,$C0,$FF,$10,$F4,$7F
LE790	ldy #0
	ldx #0
	lda PROGNAME
	beq LE7AE
LE799	lda PROGNAME,y
	cmp FOUNDNAME,y
	beq LE7A2
	inx
LE7A2	sta FOUNDNAME,y
	iny
	cpy #17
	bcs LE7AE
	pha
	pla
	bne LE799
LE7AE	rts
LE7AF	jmp LD070
LE7B2	lda #0
	sta FAST_FLAG
	sta PROGTYPE
	sta AUTO_FLAG
	sta VERIFY_FLAG
	sta MERGE_FLAG
	sta ERROR_COUNT
	sta ERROR_COUNT+1
	sta TAPE_ERRORS
	jsr LCF17
	bit STR_FLAG
	bpl LE7AF
	jsr LD7D0
	tax
	ldy #0
	inx
LE7DA	dex
	beq LE7E7
	lda (PTR1),y
	sta PROGNAME,y
	iny
	cpy #16
	bne LE7DA
LE7E7	lda #0
	sta PROGNAME,y
LE7EC	jsr TXTCHAR
	beq LE852
	cmp #COMMA
	bne LE7AF
LE7F5	jsr NEXTCHAR
	beq LE852
	cmp #COMMA
	beq LE7F5
	cmp #TOKEN_AUTO
	bne LE807
	sta PROGTYPE
	bcs LE7F5
LE807	cmp #LETTER_S
	bne LE810
	sta FAST_FLAG
	bcs LE7F5
LE810	cmp #LETTER_V
	bne LE819
	sta VERIFY_FLAG
	bcs LE7F5
LE819	cmp #LETTER_J
	bne LE822
	sta MERGE_FLAG
	bcs LE7F5
LE822	cmp #LETTER_A
	beq LE82A
	cmp #LETTER_E
	bne LE871
LE82A	sta DSTPTR
	jsr NEXTCHAR
	ldx #%10000000
	stx AUTO_FLAG
	jsr LE853
	lda TMP
	ldy TMP+1
	ldx DSTPTR
	cpx #LETTER_A
	bne LE849
	sta PROGSTART
	sty PROGSTART+1
	bcs LE7EC
LE849	sta PROGEND
	sty PROGEND+1
	jmp LE7EC
LE852	rts
LE853	jsr LCF03
	jsr LD922
	clc
	rts
CLOAD	php
	jsr LE7B2
	lda PROGTYPE
	ora AUTO_FLAG
	bne LE871
	lda MERGE_FLAG
	beq LE874
	lda VERIFY_FLAG
	beq LE874
LE871	jmp LD070
LE874	jsr LE76A
	jsr LE57D
LE87A	jsr LE4AC
	bit AUTO_FLAG
	bvs LE87A
	lda MERGE_FLAG
	beq LE8B3
	lda AUTO_FLAG
	bne LE87A
	lda VARS
	ldy VARS+1
	sec
	sbc #2
	bcs LE896
	dey
LE896	sta PROGSTART
	sty PROGSTART+1
	sec
	sbc BASTXT
	tax
	tya
	sbc BASTXT+1
	tay
	clc
	txa
	adc PROGEND
	sta PROGEND
	tya
	adc PROGEND+1
	sta PROGEND+1
LE8B3	jsr LE59B
	jsr LE4E0
	jsr LE93D
	plp
	lda VERIFY_FLAG
	beq LE8D3
	ldx ERROR_COUNT
	lda ERROR_COUNT+1
	jsr LE0C5
	lda #LOW LE552
	ldy #HIGH LE552
	jsr LCCB0
	rts
LE8D3	jsr LE651
	lda AUTO_FLAG
	beq LE8E9
	lda PROGTYPE
	beq LE8E8
	lda TAPE_ERRORS
	nop
	nop
	jmp (PROGSTART)
LE8E8	rts
LE8E9	ldx PROGEND
	lda PROGEND+1
	stx VARS
	sta VARS+1
	jsr LC55F
	lda PROGTYPE
	beq LE903
	lda TAPE_ERRORS
	nop
	nop
	jmp LC708
LE903	jsr LC708
	jmp LC4A8
CSAVE	lda BASTXT
	ldy BASTXT+1
	sta PROGSTART
	sty PROGSTART+1
	lda VARS
	ldy VARS+1
	sta PROGEND
	sty PROGEND+1
	php
	jsr LE7B2
	lda MERGE_FLAG
	ora VERIFY_FLAG
	beq LE92C
	jmp LD070
LE92C	jsr LE76A
	jsr LE585
	jsr LE607
	jsr LE62E
	jsr LE93D
	plp
	rts
LE93D	jsr LE5F5
	jsr LF9AA
	jmp LEDE0
CALL	jsr LE853
	jmp (TMP)
LE94C	ldx #0
	stx SRCPTR
	stx SRCPTR+1
	beq LE967
LE954	ldx #3
	asl a
	asl a
	asl a
	asl a
LE95A	asl a
	rol SRCPTR
	rol SRCPTR+1
	bcc LE964
	jmp LDC39
LE964	dex
	bpl LE95A
LE967	jsr NEXTCHAR
	cmp #128
	bcs LE97C
	ora #%10000000
	eor #%10110000
	cmp #10
	bcc LE954
	adc #128+8
	cmp #-6
	bcs LE954
LE97C	lda SRCPTR+1
	ldy SRCPTR
	rts
LE981	jsr LE94C
	jmp LDF40
STORE	php
	jsr LEA57
	lda #%01000000
	sta AUTO_FLAG
	lda STR_FLAG
	sta ARRAY_STRFLAG
	lda INT_FLAG
	sta ARRAY_INTFLAG
	jsr LE585
	jsr LE607
	jsr LEA9E
	jsr LE62E
	bit STR_FLAG
	bpl LE9CC
LE9AA	ldy #0
	lda (SRCPTR),y
	beq LE9C7
	tax
	ldy #2
LE9B3	lda (SRCPTR),y
	sta ACC1,y
	dey
	bne LE9B3
	inx
LE9BC	dex
	beq LE9C7
	lda (ACC1+1),y
	jsr LE65E
	iny
	bne LE9BC
LE9C7	jsr LEA42
	bcc LE9AA
LE9CC	jsr LE93D
	plp
	rts
RECALL	jsr LD650
	php
	jsr LEA57
	jsr LE57D
LE9DB	jsr LE4AC
	bit AUTO_FLAG
	bvc LE9DB
	lda ARRAY_STRFLAG
	eor STR_FLAG
	bne LE9DB
	lda ARRAY_INTFLAG
	eor INT_FLAG
	bne LE9DB
	jsr LE59B
	ldy #2
	lda (LINESEARCH),y
	cmp PROGSTART
	iny
	lda (LINESEARCH),y
	sbc PROGSTART+1
	bcs LEA09
	jsr LE93D
	jmp LC47C
LEA09	jsr LEA9E
	jsr LE4E0
	bit STR_FLAG
	bpl LEA3A
LEA13	ldy #0
	lda (SRCPTR),y
	beq LEA35
	jsr LD5AB
	ldy #0
	tax
	inx
LEA20	dex
	beq LEA2B
	jsr LE6C9
	sta (ACC1+1),y
	iny
	bne LEA20
LEA2B	ldy #2
LEA2D	lda ACC1,y
	sta (SRCPTR),y
	dey
	bne LEA2D
LEA35	jsr LEA42
	bcc LEA13
LEA3A	jsr LE93D
	jsr LE651
	plp
	rts
LEA42	clc
	lda #3
	adc SRCPTR
	sta SRCPTR
	bcc LEA4D
	inc SRCPTR+1
LEA4D	tay
	lda SRCPTR+1
	cpy PROGEND
	sbc PROGEND+1
	rts
LEA57	lda #%01000000
	sta ARRAY_FLAG
	jsr LD188
	lda #0
	sta ARRAY_FLAG
	ldy #3
	lda (LINESEARCH),y
	sta PROGSTART+1
	dey
	lda (LINESEARCH),y
	sta PROGSTART
	bne LEA74
	dec PROGSTART+1
LEA74	dec PROGSTART
	jsr LD065
	lda INT_FLAG
	pha
	lda STR_FLAG
	pha
	jsr LE7B2
	pla
	sta STR_FLAG
	pla
	sta INT_FLAG
	lda VERIFY_FLAG
	ora PROGTYPE
	ora AUTO_FLAG
	ora MERGE_FLAG
	beq LEA9A
	jmp LD070
LEA9A	jsr LE76A
	rts
LEA9E	clc
	lda LINESEARCH
	adc PROGSTART
	sta PROGEND
	lda LINESEARCH+1
	adc PROGSTART+1
	sta PROGEND+1
	ldy #4
	lda (LINESEARCH),y
	jsr LD288
	sta PROGSTART
	sty PROGSTART+1
	sta SRCPTR
	sty SRCPTR+1
	rts
EXTCOMMANDTAB
	dw SOUND-1
	dw MUSIC-1
	dw PLAY-1
	dw CURSET-1
	dw CURMOV-1
	dw DRAW-1
	dw CIRCLE-1
	dw PATTERN-1
	dw FILL-1
	dw CHAR-1
	dw PAPER-1
	dw INK-1
LEAD9	db $03,$04,$04,$03,$03,$03,$02,$01,$03,$03,$01,$01
LEAE5	db $00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$00
GRAPHCOMMANDS	lda MEMORY_MODE
	and #%00000001
	bne EXTCOMMANDS
LEAF7	ldx #LC34B-ERRMESSAGES
	jmp LC47E
EXTCOMMANDS	cpy #LOW (TOKEN_SOUND*2)
	bcs LEB03
LEB00	jmp LD070
LEB03	cpy #LOW (TOKEN_STOP*2)
	bcs LEB00
	tya
	sec
	sbc #LOW (TOKEN_SOUND*2)
	tay
	lda EXTCOMMANDTAB+1,y
	pha
	lda EXTCOMMANDTAB,y
	pha
	tya
	lsr a
	tay
	lda LEAD9,y
	pha
	lda LEAE5,y
	sta RELCURSOR_FLAG
	lda #0
	sta PARAMCOUNT
LEB26	jsr LCF03
	lda RELCURSOR_FLAG
	bne LEB34
	jsr LD922
	jmp LEB3B
LEB34	lda ACC1
	cmp #128+16
	jsr LD92A
LEB3B	ldy PARAMCOUNT
	lda TMP
	sta PARAM1,y
	lda TMP+1
	sta PARAM1+1,y
	iny
	iny
	sty PARAMCOUNT
	pla
	tay
	dey
	beq LEB5A
	tya
	pha
	jsr LD065
	jmp LEB26
LEB5A	lda #0
	sta PARAM_ERROR
	pla
	tax
	pla
	tay
	lda #HIGH (LEB6E-1)
	pha
	lda #LOW (LEB6E-1)
	pha
	tya
	pha
	txa
	pha
LEB6D	rts
LEB6E	lda #1
	bit PARAM_ERROR
	beq LEB6D
	jmp LD336
LEB78	lda ASCII_CODE
	bpl LEB88
	php
	and #%01111111
	pha
	lda #0
	sta ASCII_CODE
	pla
	plp
LEB88	rts
LEB89	cpy VARS+1
	bcs LEB8F
LEB8D	sec
LEB8E	rts
LEB8F	bne LEB97
	cmp VARS
	bcc LEB8E
	beq LEB8E
LEB97	jsr LEBB5
	bcc LEB8E
	tax
	lda MEMORY_MODE
	and #%00000010
	php
	txa
	plp
	bne LEB8D
	tya
	pha
	sec
	sbc #HIGH $1C00
	tay
	txa
	jsr LEBB5
	pla
	tay
	txa
	rts
LEBB5	cpy HIMEM_MAX+1
	bcc LEBBC
	beq LEBBD
LEBBC	rts
LEBBD	cmp HIMEM_MAX
	rts
LEBC1	ldy HIMEM_MAX+1
	lda HIMEM_MAX
	bne LEBCA
	dey
LEBCA	sec
	sbc #1
	rts
HIMEM	jsr LCF03
	jsr LD922
	lda TMP
	ldy TMP+1
	jsr LEB89
	bcc LEBE0
LEBDD	jmp LC47C
LEBE0	sta HIMEM_PTR
	sty HIMEM_PTR+1
	jmp LC70F
GRAB	lda RAMFAULT
	bne LEBDD
	lda MEMORY_MODE
	pha
	and #%00000001
	beq LEBF9
LEBF4	ldx #LC34B-ERRMESSAGES
	jmp LC47E
LEBF9	pla
	and #%11111101
	sta MEMORY_MODE
	jsr LEBC1
	pha
	tya
	clc
	adc #HIGH $1C00
	tay
	pla
	jmp LEBE0
RELEASE	jsr LEBC1
	jsr LEB89
	bcs LEBDD
	pha
	lda MEMORY_MODE
	ora #%00000010
	sta MEMORY_MODE
	pla
	jmp LEBE0
TEXT	lda MEMORY_MODE
	tay
	and #%00000001
	beq LEC32
	tya
	and #%11111110
	sta MEMORY_MODE
	jsr LF967
LEC32	rts
HIRES	lda MEMORY_MODE
	pha
	and #%00000010
	beq LEBF4
	pla
	ora #%00000001
	sta MEMORY_MODE
	jsr LF920
	rts
POINT	jsr LD062
	jsr LCF17
	lda TMP+1
	pha
	lda TMP
	pha
	jsr LD922
	lda TMP
	sta PARAM1
	lda TMP+1
	sta PARAM1+1
	pla
	sta TMP
	pla
	sta TMP+1
	jsr LD065
	jsr LCF17
	lda TMP+1
	pha
	lda TMP
	pha
	jsr LD922
	lda TMP+1
	sta PARAM2+1
	lda TMP
	sta PARAM2
	pla
	sta TMP
	pla
	sta TMP+1
	jsr LF1C8
	ldy PARAM1
	lda PARAM_ERROR
	and #1
	bne LEC99
	lda PARAM1+1
	jsr LD499
	jmp LD05F
LEC99	jmp LD8C2
LEC9C	inc TXTPTR
	bne LECA2
	inc TXTPTR+1
LECA2	lda $EA60
	cmp #SPACE
	beq LEC9C
	jsr LECB9
	rts
	db BYT2
	db $60
	db $EA
	db BYT2
	db $60
	db $EA
	db $60

LECB4	db $80,$4F,$C7,$52,$58

LECB9	cmp #TOKEN_ELSE
	beq LECCB
	cmp #QUOTE
	beq LECCB
	cmp #COLON
	bcs LECCB
	sec
	sbc #ZERO
	sec
	sbc #-ZERO
LECCB	rts
LECCC	cld
	ldx #$FF
	stx LINENUM+1
	txs
	lda #LOW LECCC
	ldy #HIGH LECCC
	sta READY_VECT+1
	sty READY_VECT+2
	lda #$4C		; opcode JMP 
	sta READY_VECT
	sta FCT_VECT
	sta USRVECT
	sta AMPERSAND_VECT
	lda #LOW LD336
	ldy #HIGH LD336
	sta USRVECT+1
	sty USRVECT+2
	sta AMPERSAND_VECT+1
	sty AMPERSAND_VECT+2
	sta BANG_PTR
	sty BANG_PTR+1
	ldx #28
LECFB	lda LEC9C-1,x
	sta SAVETXTPTR+1,x
	dex
	bne LECFB
	lda #3
	sta STRLEN
	txa
	sta ACC1_JUSTIF
	sta OLD_STK_PTR+1
	sta CONVERT_TMP
	pha
	sta KBD_DISABLE
	sta LISTRETURNFLAG
	ldx #DESC_STACK
	stx STK_PTR
	tay
	lda #%00000010
	sta MEMORY_MODE
	lda #40
	sta SCREEN_WIDTH
	lda #80
	sta PRINTER_WIDTH
	lda #0
	sta COLUMN_COUNT
	sta PRINTER_XPOS_SAVE
	sta SCREEN_XPOS_SAVE
	jsr LC83E
	jsr CLS
	lda #LOW LED96
	ldy #HIGH LED96
	jsr LCCB0
	jsr LCBF0
	ldx #LOW $0500
	ldy #HIGH $0500
	stx BASTXT
	sty BASTXT+1
	ldy #0
	tya
	sta (BASTXT),y
	inc BASTXT
	bne LED55
	inc BASTXT+1
LED55	jsr LC6F0
	lda BASTXT
	ldy BASTXT+1
	jsr LC444
	jsr LCBF0
	lda HIMEM_PTR
	sec
	sbc BASTXT
	tax
	lda HIMEM_PTR+1
	sbc BASTXT+1
	jsr LE0C5
	lda #LOW LED88
	ldy #HIGH LED88
	jsr LCCB0
	lda #LOW LCCB0
	ldy #HIGH LCCB0
	sta READY_VECT+1
	sty READY_VECT+2
	lda #$10
	sta XPOS_SAVE
	jmp LC4A8
	db $00
	db $00
LED88	string " BYTES FREE"
	db $0A,$0D,0
LED96	string "ORIC EXTENDED BASIC V1.1"
	db $0D,$0A
	string "` 1983 TANGERINE"
	db $0D,$0A,0
	db $00
LEDC4	ldx #0
	ldy #0
LEDC8	cpy HRS_CURSOR
	bne LEDD0
	cpx HRS_CURSOR+1
	beq LEDDF
LEDD0	lda (SRCPTR),y
	sta (DSTPTR),y
	iny
	bne LEDC8
	inc SRCPTR+1
	inc DSTPTR+1
	inx
	jmp LEDC8
LEDDF	rts
LEDE0	pha
	jsr LEE8C
	lda #0
	ldx #0
	ldy #3
	jsr LEEAB
	lda #1
	ldy #25
	jsr LEEAB
	lda #0
	sta CURSOR_STATE
	lda VIA_ACR
	and #%01111111
	ora #%01000000
	sta VIA_ACR
	lda #%11000000
	sta VIA_IER
	lda #LOW 10000
	sta VIA_T1L
	sta VIA_T1C
	lda #HIGH 10000
	sta VIA_T1L+1
	sta VIA_T1C+1
	pla
	rts
LEE1A	pha
	lda #%01000000
	sta VIA_IER
	pla
	rts
LEE22	pha
	lda VIA_IFR
	and #%01000000
	beq LEE30
	sta VIA_IFR
	jsr LEE34
LEE30	pla
	jmp RTI_VECT
LEE34	pha
	txa
	pha
	tya
	pha
	ldy #0
LEE3B	lda TIMER1,y
	sec
	sbc #1
	sta TIMER1,y
	iny
	lda TIMER1,y
	sbc #0
	sta TIMER1,y
	iny
	cpy #3*2
	bne LEE3B
	lda #0
	jsr LEE9D
	cpy #0
	bne LEE6B
	ldx #0
	ldy #3
	jsr LEEAB
	jsr LF495
	txa
	bpl LEE6B
	stx ASCII_CODE
LEE6B	lda #1
	jsr LEE9D
	cpy #0
	bne LEE86
	ldx #0
	ldy #25
	jsr LEEAB
	lda CURSOR_STATE
	eor #%00000001
	sta CURSOR_STATE
	jsr LF801
LEE86	pla
	tay
	pla
	tax
	pla
	rts
LEE8C	pha
	tya
	pha
	ldy #5
	lda #0
LEE93	sta TIMER1,y
	dey
	bpl LEE93
	pla
	tay
	pla
	rts
LEE9D	pha
	asl a
	tay
	sei
	lda TIMER1,y
	ldx TIMER1+1,y
	cli
	tay
	pla
	rts
LEEAB	pha
	txa
	pha
	tya
	pha
	tsx
	lda STACK+3,x
	asl a
	tay
	pla
	pha
	sei
	sta TIMER1,y
	lda STACK+2,x
	sta TIMER1+1,y
	cli
	pla
	tay
	pla
	tax
	pla
	rts
LEEC9	jsr LEEAB
LEECC	jsr LEE9D
	cpy #0
	bne LEECC
	cpx #0
	bne LEECC
	rts
LEED8	lda PATTERNVAL
	sta PATTERNWORK
LEEDE	lsr FB_CODE
	ror FB_CODE
	ror FB_CODE
	rts
LEEE8	pha
	tya
	pha
	jsr LEEDE
	jsr LF049
	jsr LF024
	pla
	tay
	pla
	rts
LEEF8	cld
	jsr LEED8
	bit PARAM1+1
	bpl LEF0B
	lda #-1
	eor PARAM1
	tax
	inx
	stx PARAM1
LEF0B	bit PARAM2+1
	bpl LEF1A
	lda #-1
	eor PARAM2
	tax
	inx
	stx PARAM2
LEF1A	lda PARAM1
	cmp PARAM2
	bcc LEF31
	ldx PARAM1
	beq LEF30
	lda PARAM2
	jsr LEF40
	jsr LEF84
LEF30	rts
LEF31	ldx PARAM2
	beq LEF3F
	lda PARAM1
	jsr LEF40
	jsr LEF5C
LEF3F	rts
LEF40	sta SRCPTR+1
	stx WORK1
	lda #0
	sta SRCPTR
	sta WORK2
	jsr LEFC8
	jsr LEFFA
	lda #0
	sta DSTPTR
	sta DSTPTR+1
	sta WORK1
	rts
LEF5C	bit PARAM2+1
	bpl LEF67
	jsr LF095
	jmp LEF6A
LEF67	jsr LF089
LEF6A	jsr LEFAC
	beq LEF7D
	bit PARAM1+1
	bpl LEF7A
	jsr LF0B2
	jmp LEF7D
LEF7A	jsr LF0A1
LEF7D	jsr LF016
	dex
	bne LEF5C
	rts
LEF84	bit PARAM1+1
	bpl LEF8F
	jsr LF0B2
	jmp LEF92
LEF8F	jsr LF0A1
LEF92	jsr LEFAC
	beq LEFA5
	bit PARAM2+1
	bpl LEFA2
	jsr LF095
	jmp LEFA5
LEFA2	jsr LF089
LEFA5	jsr LF016
	dex
	bne LEF84
	rts
LEFAC	cld
	clc
	lda DSTPTR
	adc SRCPTR
	sta DSTPTR
	lda DSTPTR+1
	adc SRCPTR+1
	sta DSTPTR+1
	bit DSTPTR
	bpl LEFC1
	clc
	adc #1
LEFC1	cmp WORK1
	sta WORK1
	rts
LEFC8	pha
	txa
	pha
	tya
	pha
	lda #0
	sta DSTPTR
	sta DSTPTR+1
	ldx #16
LEFD5	asl SRCPTR
	rol SRCPTR+1
	rol DSTPTR
	rol DSTPTR+1
	lda DSTPTR
	sec
	sbc WORK1
	tay
	lda DSTPTR+1
	sbc WORK2
	bcc LEFF1
	inc SRCPTR
	sty DSTPTR
	sta DSTPTR+1
LEFF1	dex
	bne LEFD5
	pla
	tay
	pla
	tax
	pla
	rts
LEFFA	pha
	asl WORK1
	rol WORK2
	lda WORK1
	sec
	sbc DSTPTR
	lda WORK2
	sbc DSTPTR+1
	bcs LF014
	inc SRCPTR
	bne LF014
	inc SRCPTR+1
LF014	pla
	rts
LF016	bit PATTERNWORK
	clc
	bpl LF020
	jsr LF024
	sec
LF020	rol PATTERNWORK
	rts
LF024	ldy #0
	lda (HRS_CURSOR),y
	and #%01000000
	beq LF048
	lda HRS_VAL
	bit FB_CODE
	bmi LF042
	bvs LF03D
	eor #%11111111
	and (HRS_CURSOR),y
	sta (HRS_CURSOR),y
	rts
LF03D	ora (HRS_CURSOR),y
	sta (HRS_CURSOR),y
	rts
LF042	bvs LF048
	eor (HRS_CURSOR),y
	sta (HRS_CURSOR),y
LF048	rts
LF049	cld
	pha
	tya
	pha
	jsr LF731
	clc
	adc #LOW HIRES_FIRST
	sta HRS_CURSOR
	tya
	adc #HIGH HIRES_FIRST
	sta HRS_CURSOR+1
	lda #0
	sta SRCPTR+1
	sta WORK2
	stx SRCPTR
	lda #6
	sta WORK1
	jsr LEFC8
	clc
	lda SRCPTR
	adc HRS_CURSOR
	sta HRS_CURSOR
	lda #0
	adc HRS_CURSOR+1
	sta HRS_CURSOR+1
	lda #%00100000
	ldy DSTPTR
LF07C	beq LF082
	lsr a
	dey
	bcc LF07C
LF082	sta HRS_VAL
	pla
	tay
	pla
	rts
LF089	clc
	lda HRS_CURSOR
	adc #40
	sta HRS_CURSOR
	bcc LF094
	inc HRS_CURSOR+1
LF094	rts
LF095	sec
	lda HRS_CURSOR
	sbc #40
	sta HRS_CURSOR
	bcs LF0A0
	dec HRS_CURSOR+1
LF0A0	rts
LF0A1	lsr HRS_VAL
	bcc LF0B1
	lda #%00100000
	sta HRS_VAL
	inc HRS_CURSOR
	bne LF0B1
	inc HRS_CURSOR+1
LF0B1	rts
LF0B2	asl HRS_VAL
	bit HRS_VAL
	bvc LF0C7
	lda #%00000001
	sta HRS_VAL
	lda HRS_CURSOR
	bne LF0C5
	dec HRS_CURSOR+1
LF0C5	dec HRS_CURSOR
LF0C7	rts
CURSET	lda #4
	ldx #LOW PARAM3
	jsr LF2F8
	bcs LF0F9
	lda PARAM3
	sta FB_CODE
	lda #240
	ldx #LOW PARAM1
	jsr LF2F8
	bcs LF0F9
	lda #200
	ldx #LOW PARAM2
	jsr LF2F8
	bcs LF0F9
	ldx PARAM1
	stx HRS_XCOORD
	ldy PARAM2
	sty HRS_YCOORD
	jsr LEEE8
	rts
LF0F9	inc PARAM_ERROR
	rts
CURMOV	jsr LF30A
	bcs LF10C
	ldx HRS_XCOORD
	ldy HRS_YCOORD
	jsr LEEE8
	rts
LF10C	inc PARAM_ERROR
	rts
DRAW	jsr LF30A
	bcs LF119
	jsr LEEF8
	rts
LF119	inc PARAM_ERROR
	rts
PATTERN	ldx PARAM1+1
	bne LF129
	ldx PARAM1
	stx PATTERNVAL
	rts
LF129	inc PARAM_ERROR
	rts
CHAR	ldx PARAM1+1
	bne LF16D
	ldx PARAM1
	cpx #SPACE
	bcc LF16D
	cpx #128
	bcs LF16D
	lda #2
	ldx #LOW PARAM2
	jsr LF2F8
	bcs LF16D
	lda #4
	ldx #LOW PARAM3
	jsr LF2F8
	bcs LF16D
	lda HRS_XCOORD
	cmp #240-5
	bcs LF16D
	lda HRS_YCOORD
	cmp #200-7
	bcs LF16D
	jsr LF171
	jsr LF19B
	ldx HRS_XCOORD
	ldy HRS_YCOORD
	jsr LF049
	rts
LF16D	inc PARAM_ERROR
	rts
LF171	cld
	lda PARAM3
	sta FB_CODE
	jsr LEEDE
	lda PARAM1
	sta SRCPTR
	lda #0
	sta SRCPTR+1
	ldx #3
LF186	asl SRCPTR
	rol SRCPTR+1
	dex
	bne LF186
	lda PARAM2
	asl a
	asl a
	clc
	adc #HIGH HIRES_CHARSET
	clc
	adc SRCPTR+1
	sta SRCPTR+1
	rts
LF19B	cld
	ldy #0
LF19E	sty DSTPTR+1
	lda (SRCPTR),y
	sta DSTPTR
	jsr LF35D
	rol DSTPTR
	rol DSTPTR
	ldx #6
LF1AD	rol DSTPTR
	bcc LF1B4
	jsr LF024
LF1B4	jsr LF0A1
	dex
	bne LF1AD
	jsr LF36E
	jsr LF089
	ldy DSTPTR+1
	iny
	cpy #8
	bne LF19E
	rts
LF1C8	lda #240
	ldx #LOW PARAM1
	jsr LF2F8
	bcs LF200
	lda #200
	ldx #LOW PARAM2
	jsr LF2F8
	bcs LF200
	ldx PARAM1
	stx HRS_XCOORD
	ldy PARAM2
	sty HRS_YCOORD
	jsr LF049
	ldy #0
	lda (HRS_CURSOR),y
	and HRS_VAL
	beq LF1F7
	lda #-1
	jmp LF1F9
LF1F7	lda #$00
LF1F9	sta PARAM1
	sta PARAM1+1
	rts
LF200	inc PARAM_ERROR
	rts
PAPER	lda #%00010000
	sta SRCPTR
	lda #0
	sta SRCPTR+1
	jsr LF21C
	rts
INK	lda #0
	sta SRCPTR
	lda #1
	sta SRCPTR+1
	jsr LF21C
	rts
LF21C	lda #8
	ldx #LOW PARAM1
	jsr LF2F8
	bcs LF264
	jsr LF35D
	lda PARAM1
	ora SRCPTR
	sta WORK3
	ldx HIRESFLAG
	bne LF247
	ldx SRCPTR+1
	sta PAPER_VAL,x
	lda #LOW TEXTLINE1
	clc
	adc SRCPTR+1
	tax
	ldy #HIGH TEXTLINE1
	lda #27
	jmp LF251
LF247	lda #LOW HIRES_FIRST
	clc
	adc SRCPTR+1
	tax
	ldy #HIGH HIRES_FIRST
	lda #200
LF251	sta WORK1
	stx HRS_CURSOR
	sty HRS_CURSOR+1
	lda #1
	sta WORK2
	jsr LF2CD
	jsr LF36E
	rts
LF264	inc PARAM_ERROR
	rts
FILL	cld
	lda PARAM2
	sta WORK2
	beq LF2C9
	ldy #0
	lda HRS_XCOORD
LF276	sec
	sbc #6
	bcc LF27F
	iny
	jmp LF276
LF27F	tya
	clc
	adc PARAM2
	tay
	lda PARAM2+1
	adc #0
	bne LF2C9
	cpy #40+1
	bcs LF2C9
	lda PARAM3+1
	bne LF2C9
	lda PARAM1
	sta WORK1
	beq LF2C9
	clc
	adc HRS_YCOORD
	tay
	lda PARAM1+1
	adc #0
	bne LF2C9
	cpy #200+1
	bcs LF2C9
	cpy #200
	bne LF2B3
	ldy #0
LF2B3	sty HRS_YCOORD
	lda PARAM3
	sta WORK3
	jsr LF2CD
	ldy HRS_YCOORD
	ldx HRS_XCOORD
	jsr LF049
	rts
LF2C9	inc PARAM_ERROR
	rts
LF2CD	cld
LF2CE	lda WORK3
	ldy #0
LF2D3	sta (HRS_CURSOR),y
	iny
	cpy WORK2
	bne LF2D3
	jsr LF089
	dec WORK1
	bne LF2CE
	rts
LF2E4	sta WORK5
	lda WORK2,x
	bne LF2F6
	lda WORK1,x
	beq LF2F6
	cmp WORK5
	bcc LF2F7
LF2F6	sec
LF2F7	rts
LF2F8	sta WORK5
	lda WORK2,x
	bne LF308
	lda WORK1,x
	cmp WORK5
	bcc LF309
LF308	sec
LF309	rts
LF30A	lda #4
	ldx #LOW PARAM3
	jsr LF2F8
	bcs LF35C
	clc
	lda PARAM1
	adc HRS_XCOORD
	sta WORK1
	lda PARAM1+1
	adc #0
	sta WORK2
	ldx #LOW WORK1
	lda #240
	jsr LF2F8
	bcs LF35C
	clc
	lda PARAM2
	adc HRS_YCOORD
	sta WORK3
	lda PARAM2+1
	adc #0
	sta WORK4
	ldx #LOW WORK3
	lda #200
	jsr LF2F8
	bcs LF35C
	lda PARAM3
	sta FB_CODE
	lda WORK1
	sta HRS_XCOORD
	lda WORK3
	sta HRS_YCOORD
	clc
LF35C	rts
LF35D	lda HRS_CURSOR
	sta HRS_ADR_SAVE
	lda HRS_CURSOR+1
	sta HRS_ADR_SAVE+1
	lda HRS_VAL
	sta PATTERN_SAVE
	rts
LF36E	lda HRS_ADR_SAVE
	sta HRS_CURSOR
	lda HRS_ADR_SAVE+1
	sta HRS_CURSOR+1
	lda PATTERN_SAVE
	sta HRS_VAL
	rts
CIRCLE	cld
	lda PARAM1+1
	bne LF3C2
	lda PARAM1
	beq LF3C2
	lda HRS_XCOORD
	cmp PARAM1
	bcc LF3C2
	clc
	adc PARAM1
	cmp #240
	bcs LF3C2
	lda HRS_YCOORD
	cmp PARAM1
	bcc LF3C2
	clc
	adc PARAM1
	cmp #200
	bcs LF3C2
	ldx #LOW PARAM2
	lda #4
	jsr LF2F8
	bcs LF3C2
	lda PARAM2
	sta FB_CODE
	jsr LEED8
	jsr LF3C6
	jmp LF3C5
LF3C2	inc PARAM_ERROR
LF3C5	rts
LF3C6	jsr LF35D
	lda HRS_YCOORD
	sec
	sbc PARAM1
	tay
	ldx HRS_XCOORD
	jsr LF049
	lda PARAM1
	sta DSTPTR+1
	jsr LF485
	lda #128
	sta XCIRCLE
	sta YCIRCLE
	lda #0
	sta XCIRCLE+1
	lda PARAM1
	sta YCIRCLE+1
LF3F2	lda #0
	sta DSTPTR+1
	jsr LF414
	jsr LF444
	lda DSTPTR+1
	beq LF403
	jsr LF016
LF403	lda XCIRCLE+1
	bne LF3F2
	lda YCIRCLE+1
	cmp PARAM1
	bne LF3F2
	jsr LF36E
	rts
LF414	lda YCIRCLE
	ldx YCIRCLE+1
	jsr LF474
	lda SRCPTR
	clc
	adc XCIRCLE
	sta XCIRCLE
	lda XCIRCLE+1
	sta SRCPTR
	adc SRCPTR+1
	sta XCIRCLE+1
	cmp SRCPTR
	beq LF443
	bcs LF43C
	jsr LF0A1
	jmp LF43F
LF43C	jsr LF0B2
LF43F	lda #1
	sta DSTPTR+1
LF443	rts
LF444	lda XCIRCLE
	ldx XCIRCLE+1
	jsr LF474
	sec
	lda YCIRCLE
	sbc SRCPTR
	sta YCIRCLE
	lda YCIRCLE+1
	sta SRCPTR
	sbc SRCPTR+1
	sta YCIRCLE+1
	cmp SRCPTR
	beq LF473
	bcs LF46C
	jsr LF089
	jmp LF46F
LF46C	jsr LF095
LF46F	lda #1
	sta DSTPTR+1
LF473	rts
LF474	sta SRCPTR
	stx SRCPTR+1
	ldx DSTPTR
LF47A	lda SRCPTR+1
	rol a
	ror SRCPTR+1
	ror SRCPTR
	dex
	bne LF47A
	rts
LF485	inc DSTPTR+1
	lda #0
	sta DSTPTR
	lda #%00000001
LF48D	asl a
	inc DSTPTR
	cmp DSTPTR+1
	bcc LF48D
	rts
LF495	pha
	php
	tya
	pha
	cld
	lda KBD_CODE
	bpl LF4BD
	and #%10000111
	sta KBD_WORK1
	ldx KBD_COLPATTERN
	jsr LF561
	cmp KBD_WORK1
	bne LF4BD
	dec KBD_REPEATCNT
	bne LF4E7
	lda KBD_REPEAT2
	sta KBD_REPEATCNT
	jmp LF4C6
LF4BD	lda KBD_REPEAT1
	sta KBD_REPEATCNT
	jsr LF523
LF4C6	jsr LF4EF
	tax
	bpl LF4E9
	pha
	lda DISP_FLAGS
	and #%00001000
	bne LF4E3
	pla
	pha
	cmp #%10100000
	bcc LF4E0
	jsr LFB14
	jmp LF4E3
LF4E0	jsr LFB2A
LF4E3	pla
	jmp LF4E9
LF4E7	lda #0
LF4E9	tax
	pla
	tay
	plp
	pla
	rts
LF4EF	lda KBD_CTLCODE
	tay
	lda #0
	cpy #%10100100
	beq LF4FD
	cpy #%10100111
	bne LF500
LF4FD	clc
	adc #8*8
LF500	clc
	adc KBD_CODE
	bpl LF522
	and #%01111111
	tax
	lda KBD_TABLE,x
	and KBD_UPCASEFLAG
	bpl LF514
	sec
	sbc #32
LF514	and #%01111111
	cpy #%10100010
	bne LF520
	cmp #LETTER_A-1
	bmi LF520

;caractères de contrôle:
; $01 à $1A : Ctrl-A à Ctrl-Z
; $1B : ESC ou Ctrl-[
; $1C : Ctrl-\
; $1D : Ctrl-]
; $1F : Ctrl-DEL
;pas possible de faire $00 et $1E, 
; parce qu'on ne peut avoir qu'un modifier à la fois (Ctrl ou Shift)
; et que Ctrl n'agit que pour les caractères $40 à $7F,
; Pour $00, @ demande un shift, ` (copyright) n'est pas sur le clavier
; Pour $1E, ^ demande un shift, ~ n'est pas sur le clavier
; => si on supprime la limitation de Ctrl,
; on pourrait faire $00 avec Ctrl-Space.

	and #%00011111
LF520	ora #%10000000
LF522	rts
LF523	lda #%00111000
	sta KBD_COLCNT
	sta KBD_CODE
	sta KBD_CTLCODE
	lda #%01111111
	pha
LF531	pla
	pha
	tax
	lda #%00000111
	jsr LF561
	ora KBD_COLCNT
	bpl LF550
	ldx #0
	ldy #8*4
	cpy KBD_COLCNT
	bne LF548
	inx
LF548	sta KBD_CODE,x
	pla
	pha
	sta KBD_COLPATTERN,x
LF550	sec
	pla
	ror a
	pha
	sec
	lda KBD_COLCNT
	sbc #8
	sta KBD_COLCNT
	bpl LF531
	pla
	rts
LF561	pha
	lda #14
	jsr LF590
	pla
	and #%00000111
	tax
	sta KBD_WORK2
LF56E	ora #%10111000
	sta VIA_ORB
	ldy #4
LF575	dey
	bne LF575
	lda VIA_IRB
	and #%00001000
	bne LF58C
	dex
	txa
	and #7
	tax
	cmp KBD_WORK2
	bne LF56E
	lda #0
	rts
LF58C	txa
	ora #%10000000
	rts
LF590	php
	sei
	sta VIA_ORA_NOHANDSHAKE
	tay
	txa
	cpy #7
	bne LF59D
	ora #%01000000
LF59D	pha
	lda VIA_PCR
	ora #%11101110
	sta VIA_PCR
	and #%00010001
	ora #%11001100
	sta VIA_PCR
	tax
	pla
	sta VIA_ORA_NOHANDSHAKE
	txa
	ora #%11101100
	sta VIA_PCR
	and #%00010001
	ora #%11001100
	sta VIA_PCR
	plp
	rts
LF5C1	php
	sei
	sta VIA_ORA
	lda VIA_IRB
	and #%11101111
	sta VIA_ORB
	lda VIA_IRB
	ora #%00010000
	sta VIA_ORB
	plp
LF5D7	lda VIA_IFR
	and #%00000010
	beq LF5D7
	lda VIA_IFR
	rts
LF5E2	db LF6FE-LF62F
	db LF6FE-LF62F
	db LF6FE-LF62F
	db LF6FE-LF62F
	db LF6D2-LF62F
	db LF6FE-LF62F
	db LF6D5-LF62F
	db LF6FB-LF62F
	db LF62F-LF62F
	db LF656-LF62F
	db LF663-LF62F
	db LF63E-LF62F
	db LF695-LF62F
	db LF6C8-LF62F
	db LF68F-LF62F
	db LF6FE-LF62F
	db LF6D6-LF62F
	db LF6E2-LF62F
	db LF6FE-LF62F
	db LF6D7-LF62F
	db LF6ED-LF62F
	db LF6FE-LF62F
	db LF6FE-LF62F
	db LF6FE-LF62F
	db LF6FE-LF62F
	db LF6FE-LF62F
	db LF6D4-LF62F
	db LF6D4-LF62F
	db LF6FE-LF62F
	db LF6D3-LF62F
	db LF6B3-LF62F
	db LF6FE-LF62F
LF602	and #%00011111
	tax
	lda LF5E2,x
	clc
	adc #LOW LF62F
	sta CTL_ROUT_PTR
	lda #0
	adc #HIGH LF62F
	sta CTL_ROUT_PTR+1
	lda DISP_FLAGS
	pha
	and #%11111110
	sta DISP_FLAGS
	pla
	and #%00000001
	sta CURSOR_ENAB_SAVE
	lda #0
	jsr LF801
	sec
	lda #0
	jmp (CTL_ROUT_PTR)
LF62F	dec SCREENX
	bmi LF639
	jsr LF7D7
	bne LF679
LF639	lda #39
	sta SCREENX
LF63E	lda SCREENY
	cmp #1
	beq LF679
	dec SCREENY
	sec
	lda TXTLIN_ADDR
	sbc #40
	sta TXTLIN_ADDR
	bcs LF653
	dec TXTLIN_ADDR+1
LF653	jmp LF6FE
LF656	inc SCREENX
	ldx #39
	cpx SCREENX
	bpl LF679
	jsr LF70D
LF663	lda SCREENY
	cmp SCROLL_LINES
	beq LF67C
	inc SCREENY
	clc
	lda TXTLIN_ADDR
	adc #40
	sta TXTLIN_ADDR
	bcc LF679
	inc TXTLIN_ADDR+1
LF679	jmp LF6FE
LF67C	jsr LF35D
	ldx #6
LF681	lda TIMER3+1,x
	sta SRCPTR-1,x
	dex
	bne LF681
	jsr LEDC4
	jsr LF36E
LF68F	jsr LF71A
	jmp LF6FE
LF695	ldx SCROLL_LINES
	lda LINE1_ADDR
	sta TXTLIN_ADDR
	lda LINE1_ADDR+1
	sta TXTLIN_ADDR+1
LF6A2	jsr LF71A
	clc
	lda TXTLIN_ADDR
	adc #40
	sta TXTLIN_ADDR
	bcc LF6B0
	inc TXTLIN_ADDR+1
LF6B0	dex
	bne LF6A2
LF6B3	jsr LF70D
	lda #1
	sta SCREENY
	lda LINE1_ADDR
	sta TXTLIN_ADDR
	lda LINE1_ADDR+1
	sta TXTLIN_ADDR+1
	jmp LF6FE
LF6C8	jsr LF70D
	stx FIRST_COL
	jmp LF6FE
	db $2A
LF6D2	rol a
LF6D3	rol a
LF6D4	rol a
LF6D5	rol a
LF6D6	rol a
LF6D7	rol a
	rol a
	eor DISP_FLAGS
	sta DISP_FLAGS
	jmp LF6FE
LF6E2	lda CURSOR_ENAB_SAVE
	eor #%00000001
	sta CURSOR_ENAB_SAVE
	jmp LF6FE
LF6ED	lda KBD_UPCASEFLAG
	eor #%10000000
	sta KBD_UPCASEFLAG
	jsr LF75A
	jmp LF6FE
LF6FB	jsr PING
LF6FE	lda DISP_FLAGS
	ora CURSOR_ENAB_SAVE
	sta DISP_FLAGS
	lda #1
	jsr LF801
	rts
LF70D	ldx #0
	jsr LF7DE
	bne LF716
	inx
	inx
LF716	stx SCREENX
	rts
LF71A	ldy #39
	lda #SPACE
LF71E	sta (TXTLIN_ADDR),y
	dey
	bpl LF71E
	ldy #0
	lda PAPER_VAL
	sta (TXTLIN_ADDR),y
	lda INK_VAL
	iny
	sta (TXTLIN_ADDR),y
	rts
LF731	ldy #0
	sty LINEADDR_WORK
	sta LINEADDR_WORK+1
	asl a
	rol LINEADDR_WORK
	asl a
	rol LINEADDR_WORK
	clc
	adc LINEADDR_WORK+1
	bcc LF74A
	inc LINEADDR_WORK
LF74A	asl a
	rol LINEADDR_WORK
	asl a
	rol LINEADDR_WORK
	asl a
	rol LINEADDR_WORK
	ldy LINEADDR_WORK
	rts
LF75A	lda KBD_UPCASEFLAG
	bpl LF766
	lda #LOW LF770
	ldy #HIGH LF770
	jmp LF76A
LF766	lda #LOW LF776
	ldy #HIGH LF776
LF76A	ldx #40-5
	jsr LF865
	rts
LF770	db $07
	string "CAPS"
	db 0
LF776	db $07
	string "    "
	db 0
LF77C	pha
	php
	tya
	pha
	txa
	pha
	cld
	cpx #CTRL_S
	beq LF7CD
	cpx #CTRL_T
	beq LF7CD
	cpx #CTRL_F
	beq LF7CD
	lda DISP_FLAGS
	and #%00000010
	beq LF7D0
	txa
	cmp #SPACE
	bcc LF7CD
	lda DISP_FLAGS
	and #%00010000
	beq LF7B5
	txa
	sec
	sbc #LETTER_A-1
	bmi LF7B1
	and #%00011111
LF7AA	jsr LF7E4
	lda #ESC
	bne LF7CD
LF7B1	lda #SPACE
	bpl LF7AA
LF7B5	cpx #DEL
	beq LF7C1
	pla
	pha
	jsr LF7E4
	jmp LF7D0
LF7C1	lda #CTRL_H
	jsr LF602
	lda #SPACE
	jsr LF7E4
	lda #CTRL_H
LF7CD	jsr LF602
LF7D0	pla
	tax
	pla
	tay
	plp
	pla
	rts
LF7D7	lda SCREENX
	and #%11111110
	bne LF7E3
LF7DE	lda DISP_FLAGS
	and #%00100000
LF7E3	rts
LF7E4	pha
	ldy SCREENX
	sta (TXTLIN_ADDR),y
	bit DISP_FLAGS
	bvc LF7FA
	lda SCREENX
	clc
	adc #40
	tay
	pla
	pha
	sta (TXTLIN_ADDR),y
LF7FA	lda #CTRL_I
	jsr LF602
	pla
	rts
LF801	and DISP_FLAGS
	lsr a
	ror a
	sta CURSOR_WORK
	ldy SCREENX
	lda (TXTLIN_ADDR),y
	and #%01111111
	ora CURSOR_WORK
	sta (TXTLIN_ADDR),y
	rts
LF816	lda #LOW ALT_CHARSET
	sta SRCPTR
	lda #HIGH ALT_CHARSET
	sta SRCPTR+1
	lda #0
	jsr LF82D
	ldy #HIGH (ALT_CHARSET+$0100)
	sty SRCPTR+1
	lda #%00100000
	jsr LF82D
	rts
LF82D	ldy #0
LF82F	pha
	jsr LF854
	sta (SRCPTR),y
	iny
	pla
	pha
	jsr LF852
	pla
	pha
	jsr LF850
	sta (SRCPTR),y
	iny
	cpy #0
	beq LF84E
	pla
	clc
	adc #1
	jmp LF82F
LF84E	pla
	rts
LF850	lsr a
	lsr a
LF852	lsr a
	lsr a
LF854	and #%00000011
	tax
	lda LF861,x
	sta (SRCPTR),y
	iny
	sta (SRCPTR),y
	iny
	rts
LF861	db $00,$38,$07,$3F
LF865	sta SRCPTR
	sty SRCPTR+1
	lda HIRESFLAG
	bne LF87B
	ldy #0
LF870	lda (SRCPTR),y
	beq LF87B
	sta STATUS_LINE,x
	inx
	iny
	bne LF870
LF87B	rts
LF87C
    db 2,0,$60 	; PATCH (jmp LF77C)
	db 2,1,$60  ; PATCH (jmp LEB78)
	jmp LF5C1
	jmp LF865
	rti
    nop
    nop         ; PATCH (jmp LEE22)
	jmp LF8B2
	rti
RESET	ldx #$FF
	txs
	cli
	cld
	ldx #18
LF896	lda LF87C,x
	sta VDU_VECT,x
	dex
	bpl LF896
	lda #32
	sta KBD_REPEAT1
	lda #4
	sta KBD_REPEAT2
	jsr LFA14
	nop
    nop
    nop     ; PATCH (jsr LF8B8)
	jmp LECCC
LF8B2
    nop
    nop
    nop     ; PATCH (jsr LF8B8)
	jmp LC471
LF8B8	jsr LF9AA
	lda #7
	ldx #%01000000
	jsr LF590
	jsr LEDE0
	jsr LF90E
	lda #%11111111
	sta KBD_UPCASEFLAG
	jsr LF9C9
	ldx #5
	jsr LF982
	jsr LF816
	jsr LF75A
	rts
LF8DC	pha
	txa
	pha
	lda #1
	sta HIRESFLAG
	lda #HIGH $BF68
	sta LINE1_ADDR+1
	sta LINE2_ADDR+1
	lda #LOW $BF68
	sta LINE1_ADDR
	lda #LOW $BF90
	sta LINE2_ADDR
	lda #3
	sta SCROLL_LINES
	lda #HIGH 80
	sta SCROLLSIZE+1
	lda #LOW 80
	sta SCROLLSIZE
	ldx #FORMFEED
	jsr VDU_VECT
	pla
	tax
	pla
	rts
LF90E	pha
	lda #%00000011
	sta DISP_FLAGS
	lda #0
	sta INK_VAL
	lda #%00010111
	sta PAPER_VAL
	pla
	rts
LF920	pha
	lda HIRESFLAG
	bne LF92B
	ldx #2*6-1
	jsr LF982
LF92B	lda #%11111110
	and DISP_FLAGS
	sta DISP_FLAGS
	lda #%00011110
	sta SCREEN_LAST
	lda #%01000000
	sta HIRES_FIRST
	ldx #4*6-1
	jsr LF982
	lda #0
	sta HRS_XCOORD
	sta HRS_YCOORD
	sta HRS_CURSOR
	lda #HIGH HIRES_FIRST
	sta HRS_CURSOR+1
	lda #%00100000
	sta HRS_VAL
	lda #%11111111
	sta PATTERNVAL
	jsr LF8DC
	lda #%00000001
	ora DISP_FLAGS
	sta DISP_FLAGS
	pla
	rts
LF967	pha
	lda #%11111110
	and DISP_FLAGS
	sta DISP_FLAGS
	ldx #3*6-1
	jsr LF982
	jsr LF9C9
	lda #%00000001
	ora DISP_FLAGS
	sta DISP_FLAGS
	pla
	rts
LF982	ldy #6
LF984	lda LF992,x
	sta MOVEPARAMS-1,y
	dex
	dey
	bne LF984
	jsr LEDC4
	rts
LF992	dw LFC78,$B500,$0300
	dw $B400,$9800,$0780
	dw $9800,$B400,$0780
	dw $A000,$A001,$1F3F
LF9AA	lda #%11111111
	sta VIA_DDRA
	lda #%11110111
	sta VIA_DDRB
	lda #%10110111
	sta VIA_ORB
	lda #%11011101
	sta VIA_PCR
	lda #%01111111
	sta VIA_IER
	lda #0
	sta VIA_ACR
	rts
LF9C9	lda #%00011010
	jsr LFA07
	lda #SPACE
	ldy #40
LF9D2	sta STATUS_LINE-1,y
	dey
	bne LF9D2
	lda #0
	sta HIRESFLAG
	lda #HIGH STATUS_LINE
	sta LINE1_ADDR+1
	sta LINE2_ADDR+1
	lda #LOW TEXTLINE1
	sta LINE1_ADDR
	lda #LOW TEXTLINE2
	sta LINE2_ADDR
	lda #27
	sta SCROLL_LINES
	lda #HIGH 26*40
	sta SCROLLSIZE+1
	lda #LOW 26*40
	sta SCROLLSIZE
	ldx #FORMFEED
	jsr VDU_VECT
	jsr LF75A
	rts
LFA07	sta SCREEN_LAST
	lda #2
	ldx #0
	ldy #3
	jsr LEEC9
	rts
LFA14	ldy #0
	sty RAMFAULT
	sty RAMSIZEFLAG
	sty $0500
	sty DSTPTR
	dey
	sty SRCPTR
	sty $8500   ; PATCH ($4500)
	lda $0500
	bne LFA30
	lda #HIGH $C000
	bne LFA35
LFA30	inc RAMSIZEFLAG
	lda #HIGH $4000
LFA35	sta DSTPTR+1
	iny
	lda #HIGH $03FF
	sta SRCPTR+1
LFA3C	inc SRCPTR
	bne LFA42
	inc SRCPTR+1
LFA42	lda SRCPTR
	cmp DSTPTR
	bne LFA4E
	lda SRCPTR+1
	cmp DSTPTR+1
	beq LFA5D
LFA4E	lda #%10101010
	sta (SRCPTR),y
	cmp (SRCPTR),y
	bne LFA5D
	lsr a
	sta (SRCPTR),y
	cmp (SRCPTR),y
	beq LFA3C
LFA5D	sec
	lda DSTPTR+1
	sbc #HIGH $2800
	sta DSTPTR+1
	lda DSTPTR
	cmp SRCPTR
	lda DSTPTR+1
	sbc SRCPTR+1
	bcc LFA77
	lda SRCPTR
	ldy SRCPTR+1
	inc RAMFAULT
	bne LFA7B
LFA77	lda DSTPTR
	ldy DSTPTR+1
LFA7B	sta HIMEM_PTR
	sty HIMEM_PTR+1
	sta HIMEM_MAX
	sty HIMEM_MAX+1
	rts
LFA86	php
	sei
	stx SOUND_DATA
	sty SOUND_DATA+1
	ldy #0
LFA8E	lda (SOUND_DATA),y
	tax
	tya
	pha
	jsr LF590
	pla
	tay
	iny
	cpy #14
	bne LFA8E
	plp
	rts

PING	ldx #LOW LFAA7
	ldy #HIGH LFAA7
	jsr LFA86
	rts

LFAA7	db $18,$00,$00,$00,$00,$00,$00,$3E,$10,$00,$00,$00,$0F,$00

SHOOT	ldx #LOW LFABD
	ldy #HIGH LFABD
	jsr LFA86
	rts

LFABD	db $00,$00,$00,$00,$00,$00,$0F,$07,$10,$10,$10,$00,$08,$00

EXPLODE	ldx #LOW LFAD3
	ldy #HIGH LFAD3
	jsr LFA86
	rts

LFAD3	db $00,$00,$00,$00,$00,$00,$1F,$07,$10,$10,$10,$00,$18,$00

ZAP	ldx #LOW LFB06
	ldy #HIGH LFB06
	jsr LFA86
	lda #0
	tax
LFAEB	txa
	pha
	lda #0
	jsr LF590
	ldx #0
LFAF4	dex
	bne LFAF4
	pla
	tax
	inx
	cpx #112
	bne LFAEB
	lda #8
	ldx #0
	jsr LF590
	rts

LFB06	db $00,$00,$00,$00,$00,$00,$00,$3E,$0F,$00,$00,$00,$00,$00

LFB14	ldx #LOW LFB1C
	ldy #HIGH LFB1C
	jsr LFA86
	rts
LFB1C	db $1F,$00,$00,$00,$00,$00,$00,$3E,$10,$00,$00,$1F,$00,$00

LFB2A	ldx #LOW LFB32
	ldy #HIGH LFB32
	jsr LFA86
	rts

LFB32	db $2F,$00,$00,$00,$00,$00,$00,$3E,$10,$00,$00,$1F,$00,$00

SOUND	lda PARAM1
	cmp #1
	bne LFB69
	lda #0
	ldx PARAM2
	jsr LF590
	lda #1
	ldx PARAM2+1
	jsr LF590
LFB57	lda PARAM3
	and #%00001111
	bne LFB62
	ldx #%00010000
	bne LFB63
LFB62	tax
LFB63	lda #8
	jsr LF590
	rts
LFB69	cmp #2
	bne LFB8F
	lda #2
	ldx PARAM2
	jsr LF590
	lda #3
	ldx PARAM2+1
	jsr LF590
LFB7D	lda PARAM3
	and #%00001111
	bne LFB88
	ldx #%00010000
	bne LFB89
LFB88	tax
LFB89	lda #9
	jsr LF590
	rts
LFB8F	cmp #3
	bne LFBB5
	lda #4
	ldx PARAM2
	jsr LF590
	lda #5
	ldx PARAM2+1
	jsr LF590
LFBA3	lda PARAM3
	and #%00001111
	bne LFBAE
	ldx #%00010000
	bne LFBAF
LFBAE	tax
LFBAF	lda #10
	jsr LF590
	rts
LFBB5	lda #6
	ldx PARAM2
	jsr LF590
	lda PARAM1
	cmp #4
	beq LFB57
	cmp #5
	beq LFB7D
	cmp #6
	beq LFBA3
	inc PARAM_ERROR
	rts
PLAY	lda PARAM2
	asl a
	asl a
	asl a
	ora PARAM1
	eor #%00111111
	tax
	lda #7
	jsr LF590
	clc
	lda PARAM4
	asl a
	sta PARAM4
	lda PARAM4+1
	rol a
	sta PARAM4+1
	lda #11
	ldx PARAM4
	jsr LF590
	lda #12
	ldx PARAM4+1
	jsr LF590
	lda PARAM3
	and #7
	tay
	lda LFC10,y
	tax
	lda #13
	jsr LF590
	rts
LFC10	db $00,$00,$04,$08,$0A,$0B,$0C,$0D
MUSIC	ldx #LOW PARAM1
	lda #4
	jsr LF2E4
	bcs LFC5A
	ldx #LOW PARAM2
	lda #8
	jsr LF2F8
	bcs LFC5A
	ldx #LOW PARAM3
	lda #13
	jsr LF2E4
	bcs LFC5A
	ldy PARAM2
	ldx PARAM3
	lda LFC5E,x
	sta PARAM2+1
	lda LFC6B,x
	sta PARAM2
	lda PARAM4
	sta PARAM3
LFC4B	dey
	bmi LFC57
	lsr PARAM2+1
	ror PARAM2
	jmp LFC4B
LFC57	jmp SOUND
LFC5A	inc PARAM_ERROR
	rts
LFC5E	db $00,$07,$07,$06,$06,$05,$05,$05,$04,$04,$04,$04,$03
LFC6B	db $00,$77,$0B,$A6,$47,$EC,$97,$47,$FB,$B3,$70,$30,$F4


LFC78
	; char $20 : <SPACE>  
	db %000000
	db %000000
	db %000000
	db %000000
	db %000000
	db %000000
	db %000000
	db %000000

	; char $21 : !
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000
	db %000000
	db %001000
	db %000000

	; char $22 : "
	db %010100
	db %010100
	db %010100
	db %000000
	db %000000
	db %000000
	db %000000
	db %000000

	; char $23 : #
	db %010100
	db %010100
	db %111110
	db %010100
	db %111110
	db %010100
	db %010100
	db %000000

	; char $24 : $
	db %001000
	db %011110
	db %101000
	db %011100
	db %001010
	db %111100
	db %001000
	db %000000

	; char $25 : %
	db %110000
	db %110010
	db %000100
	db %001000
	db %010000
	db %100110
	db %000110
	db %000000

	; char $26 : &
	db %010000
	db %101000
	db %101000
	db %010000
	db %101010
	db %100100
	db %011010
	db %000000

	; char $27 : '
	db %001000
	db %001000
	db %001000
	db %000000
	db %000000
	db %000000
	db %000000
	db %000000

	; char $28 : (
	db %001000
	db %010000
	db %100000
	db %100000
	db %100000
	db %010000
	db %001000
	db %000000

	; char $29 : )
	db %001000
	db %000100
	db %000010
	db %000010
	db %000010
	db %000100
	db %001000
	db %000000

	; char $2a : *
	db %001000
	db %101010
	db %011100
	db %001000
	db %011100
	db %101010
	db %001000
	db %000000

	; char $2b : +
	db %000000
	db %001000
	db %001000
	db %111110
	db %001000
	db %001000
	db %000000
	db %000000

	; char $2c : ,
	db %000000
	db %000000
	db %000000
	db %000000
	db %000000
	db %001000
	db %001000
	db %010000

	; char $2d : -
	db %000000
	db %000000
	db %000000
	db %111110
	db %000000
	db %000000
	db %000000
	db %000000

	; char $2e : .
	db %000000
	db %000000
	db %000000
	db %000000
	db %000000
	db %000100
	db %000000
	db %000000

	; char $2f : /
	db %000000
	db %000010
	db %000100
	db %001000
	db %010000
	db %100000
	db %000000
	db %000000

	; char $30 : 0
	db %011100
	db %100010
	db %100110
	db %101010
	db %110010
	db %100010
	db %011100
	db %000000

	; char $31 : 1
	db %001000
	db %011000
	db %001000
	db %001000
	db %001000
	db %001000
	db %011100
	db %000000

	; char $32 : 2
	db %011100
	db %100010
	db %000010
	db %000100
	db %001000
	db %010000
	db %111110
	db %000000

	; char $33 : 3
	db %111110
	db %000010
	db %000100
	db %001100
	db %000010
	db %100010
	db %011100
	db %000000

	; char $34 : 4
	db %000100
	db %001100
	db %010100
	db %100100
	db %111110
	db %000100
	db %000100
	db %000000

	; char $35 : 5
	db %111110
	db %100000
	db %111100
	db %000010
	db %000010
	db %100010
	db %011100
	db %000000

	; char $36 : 6
	db %001100
	db %010000
	db %100000
	db %111100
	db %100010
	db %100010
	db %011100
	db %000000

	; char $37 : 7
	db %111110
	db %000010
	db %000100
	db %001000
	db %010000
	db %010000
	db %010000
	db %000000

	; char $38 : 8
	db %011100
	db %100010
	db %100010
	db %011100
	db %100010
	db %100010
	db %011100
	db %000000

	; char $39 : 9
	db %011100
	db %100010
	db %100010
	db %011110
	db %000010
	db %000100
	db %011000
	db %000000

	; char $3a : :
	db %000000
	db %000000
	db %001000
	db %000000
	db %000000
	db %001000
	db %000000
	db %000000

	; char $3b : ;
	db %000000
	db %000000
	db %001000
	db %000000
	db %000000
	db %001000
	db %001000
	db %010000

	; char $3c : <
	db %000100
	db %001000
	db %010000
	db %100000
	db %010000
	db %001000
	db %000100
	db %000000

	; char $3d : =
	db %000000
	db %000000
	db %111110
	db %000000
	db %111110
	db %000000
	db %000000
	db %000000

	; char $3e : >
	db %010000
	db %001000
	db %000100
	db %000010
	db %000100
	db %001000
	db %010000
	db %000000

	; char $3f : ?
	db %011100
	db %100010
	db %000100
	db %001000
	db %001000
	db %000000
	db %001000
	db %000000

	; char $40 : @
	db %011100
	db %100010
	db %101010
	db %101110
	db %101100
	db %100000
	db %011110
	db %000000

	; char $41 : A
	db %001000
	db %010100
	db %100010
	db %100010
	db %111110
	db %100010
	db %100010
	db %000000

	; char $42 : B
	db %111100
	db %100010
	db %100010
	db %111100
	db %100010
	db %100010
	db %111100
	db %000000

	; char $43 : C
	db %011100
	db %100010
	db %100000
	db %100000
	db %100000
	db %100010
	db %011100
	db %000000

	; char $44 : D
	db %111100
	db %100010
	db %100010
	db %100010
	db %100010
	db %100010
	db %111100
	db %000000

	; char $45 : E
	db %111110
	db %100000
	db %100000
	db %111100
	db %100000
	db %100000
	db %111110
	db %000000

	; char $46 : F
	db %111110
	db %100000
	db %100000
	db %111100
	db %100000
	db %100000
	db %100000
	db %000000

	; char $47 : G
	db %011110
	db %100000
	db %100000
	db %100000
	db %100110
	db %100010
	db %011110
	db %000000

	; char $48 : H
	db %100010
	db %100010
	db %100010
	db %111110
	db %100010
	db %100010
	db %100010
	db %000000

	; char $49 : I
	db %011100
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000
	db %011100
	db %000000

	; char $4a : J
	db %000010
	db %000010
	db %000010
	db %000010
	db %000010
	db %100010
	db %011100
	db %000000

	; char $4b : K
	db %100010
	db %100100
	db %101000
	db %110000
	db %101000
	db %100100
	db %100010
	db %000000

	; char $4c : L
	db %100000
	db %100000
	db %100000
	db %100000
	db %100000
	db %100000
	db %111110
	db %000000

	; char $4d : M
	db %100010
	db %110110
	db %101010
	db %101010
	db %100010
	db %100010
	db %100010
	db %000000

	; char $4e : N
	db %100010
	db %100010
	db %110010
	db %101010
	db %100110
	db %100010
	db %100010
	db %000000

	; char $4f : O
	db %011100
	db %100010
	db %100010
	db %100010
	db %100010
	db %100010
	db %011100
	db %000000

	; char $50 : P
	db %111100
	db %100010
	db %100010
	db %111100
	db %100000
	db %100000
	db %100000
	db %000000

	; char $51 : Q
	db %011100
	db %100010
	db %100010
	db %100010
	db %101010
	db %100100
	db %011010
	db %000000

	; char $52 : R
	db %111100
	db %100010
	db %100010
	db %111100
	db %101000
	db %100100
	db %100010
	db %000000

	; char $53 : S
	db %011100
	db %100010
	db %100000
	db %011100
	db %000010
	db %100010
	db %011100
	db %000000

	; char $54 : T
	db %111110
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000
	db %000000

	; char $55 : U
	db %100010
	db %100010
	db %100010
	db %100010
	db %100010
	db %100010
	db %011100
	db %000000

	; char $56 : V
	db %100010
	db %100010
	db %100010
	db %100010
	db %100010
	db %010100
	db %001000
	db %000000

	; char $57 : W
	db %100010
	db %100010
	db %100010
	db %101010
	db %101010
	db %110110
	db %100010
	db %000000

	; char $58 : X
	db %100010
	db %100010
	db %010100
	db %001000
	db %010100
	db %100010
	db %100010
	db %000000

	; char $59 : Y
	db %100010
	db %100010
	db %010100
	db %001000
	db %001000
	db %001000
	db %001000
	db %000000

	; char $5a : Z
	db %111110
	db %000010
	db %000100
	db %001000
	db %010000
	db %100000
	db %111110
	db %000000

	; char $5b : [
	db %011110
	db %010000
	db %010000
	db %010000
	db %010000
	db %010000
	db %011110
	db %000000

	; char $5c : \
	db %000000
	db %100000
	db %010000
	db %001000
	db %000100
	db %000010
	db %000000
	db %000000

	; char $5d : ]
	db %111100
	db %000100
	db %000100
	db %000100
	db %000100
	db %000100
	db %111100
	db %000000

	; char $5e : ^
	db %001000
	db %010100
	db %101010
	db %001000
	db %001000
	db %001000
	db %001000
	db %000000

	; char $5f : _
	db %001110
	db %010000
	db %010000
	db %010000
	db %111100
	db %010000
	db %111110
	db %000000

	; char $60 : `
	db %001100
	db %010010
	db %101101
	db %101001
	db %101001
	db %101101
	db %010010
	db %001100

	; char $61 : a
	db %000000
	db %000000
	db %011100
	db %000010
	db %011110
	db %100010
	db %011110
	db %000000

	; char $62 : b
	db %100000
	db %100000
	db %111100
	db %100010
	db %100010
	db %100010
	db %111100
	db %000000

	; char $63 : c
	db %000000
	db %000000
	db %011110
	db %100000
	db %100000
	db %100000
	db %011110
	db %000000

	; char $64 : d
	db %000010
	db %000010
	db %011110
	db %100010
	db %100010
	db %100010
	db %011110
	db %000000

	; char $65 : e
	db %000000
	db %000000
	db %011100
	db %100010
	db %111110
	db %100000
	db %011110
	db %000000

	; char $66 : f
	db %001100
	db %010010
	db %010000
	db %111100
	db %010000
	db %010000
	db %010000
	db %000000

	; char $67 : g
	db %000000
	db %000000
	db %011100
	db %100010
	db %100010
	db %011110
	db %000010
	db %011100

	; char $68 : h
	db %100000
	db %100000
	db %111100
	db %100010
	db %100010
	db %100010
	db %100010
	db %000000

	; char $69 : i
	db %001000
	db %000000
	db %011000
	db %001000
	db %001000
	db %001000
	db %011100
	db %000000

	; char $6a : j
	db %000100
	db %000000
	db %001100
	db %000100
	db %000100
	db %000100
	db %100100
	db %011000

	; char $6b : k
	db %100000
	db %100000
	db %100010
	db %100100
	db %111000
	db %100100
	db %100010
	db %000000

	; char $6c : l
	db %011000
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000
	db %011100
	db %000000

	; char $6d : m
	db %000000
	db %000000
	db %110110
	db %101010
	db %101010
	db %101010
	db %100010
	db %000000

	; char $6e : n
	db %000000
	db %000000
	db %111100
	db %100010
	db %100010
	db %100010
	db %100010
	db %000000

	; char $6f : o
	db %000000
	db %000000
	db %011100
	db %100010
	db %100010
	db %100010
	db %011100
	db %000000

	; char $70 : p
	db %000000
	db %000000
	db %111100
	db %100010
	db %100010
	db %111100
	db %100000
	db %100000

	; char $71 : q
	db %000000
	db %000000
	db %011110
	db %100010
	db %100010
	db %011110
	db %000010
	db %000010

	; char $72 : r
	db %000000
	db %000000
	db %101110
	db %110000
	db %100000
	db %100000
	db %100000
	db %000000

	; char $73 : s
	db %000000
	db %000000
	db %011110
	db %100000
	db %011100
	db %000010
	db %111100
	db %000000

	; char $74 : t
	db %010000
	db %010000
	db %111100
	db %010000
	db %010000
	db %010010
	db %001100
	db %000000

	; char $75 : u
	db %000000
	db %000000
	db %100010
	db %100010
	db %100010
	db %100110
	db %011010
	db %000000

	; char $76 : v
	db %000000
	db %000000
	db %100010
	db %100010
	db %100010
	db %010100
	db %001000
	db %000000

	; char $77 : w
	db %000000
	db %000000
	db %100010
	db %100010
	db %101010
	db %101010
	db %110110
	db %000000

	; char $78 : x
	db %000000
	db %000000
	db %100010
	db %010100
	db %001000
	db %010100
	db %100010
	db %000000

	; char $79 : y
	db %000000
	db %000000
	db %100010
	db %100010
	db %100010
	db %011110
	db %000010
	db %011100

	; char $7a : z
	db %000000
	db %000000
	db %111110
	db %000100
	db %001000
	db %010000
	db %111110
	db %000000

	; char $7b : {
	db %001110
	db %011000
	db %011000
	db %110000
	db %011000
	db %011000
	db %001110
	db %000000

	; char $7c : |
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000
	db %001000

	; char $7d : }
	db %111000
	db %001100
	db %001100
	db %000110
	db %001100
	db %001100
	db %111000
	db %000000

	; char $7e : ~
	db %101010
	db %010101
	db %101010
	db %010101
	db %101010
	db %010101
	db %101010
	db %010101

	; char $7f : <DEL>
	db %111111
	db %111111
	db %111111
	db %111111
	db %111111
	db %111111
	db %111111
	db %111111

KBD_TABLE
	db '7'      ,'j'+LOWER,'m'+LOWER,'k'+LOWER,' ','u'+LOWER,'y'+LOWER,'8'
	db 'n'+LOWER,'t'+LOWER,'6'      ,'9'      ,',','i'+LOWER,'h'+LOWER,'l'+LOWER
	db '5'      ,'r'+LOWER,'b'+LOWER,';'      ,'.','o'+LOWER,'g'+LOWER,'0'
	db 'v'+LOWER,'f'+LOWER,'4'      ,'-'      ,$0B,'p'+LOWER,'e'+LOWER,'/'
	db 0        ,0        ,0        ,0        ,0  ,0        ,0        ,0
	db '1'      ,$1B      ,'z'+LOWER,0        ,$08,$7F      ,'a'+LOWER,$0D
	db 'x'+LOWER,'q'+LOWER,'2'      ,'\\'     ,$0A,']'      ,'s'+LOWER,0
	db '3'      ,'d'+LOWER,'c'+LOWER,'\''     ,$09,'['      ,'w'+LOWER,'='

	db '&','J','M','K',' ','U','Y','*'
	db 'N','T','^','(','<','I','H','L'
	db '%','R','B',':','>','O','G',')'
	db 'V','F','$',$5F,$0B,'P','E','?'	; $5F est _ en ASCII, mais £ sur Oric
	db $00,$00,$00,$00,$00,$00,$00,$00
	db '!',$1B,'Z',$00,$08,$7F,'A',$0D
	db 'X','Q',$40,'|',$0A,'}','S',$00
	db '#','D','C','"',$09,'{','W','+'
;
; Il manque les caractères $60 et $7E sur le clavier...
; on pourrait avoir ~ en utilisant Shift-DEL, et ` avec Shift-ESC ?

	db $D0
	db $01

	org $FFFA
	dw NMI_VECT
	dw RESET
	dw IRQ_VECT

