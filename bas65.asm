KBDCHAR		=$2C  ; seulement utilisé en C6E6

*=$C000

#define PROTOTYPE6502 1

#ifdef PROTOTYPE6502
#define ROR(operand) \
.(                  :\
    lda #0          :\
    bcc suite       :\
    lda #$80        :\
suite               :\
    lsr operand     :\
    ora operand     :\
    sta operand     :\
.)

#define ROR1(operand,x) \
.(                  :\
    lda #0          :\
    bcc suite       :\
    lda #$80        :\
suite               :\
    lsr operand,x   :\
    ora operand,x   :\
    sta operand,x   :\
.)

#else
#define ROR(operand) ror operand
#define ROR1(operand,x) ror operand,x
#endif


;*****************************************

; PATCH  translated zero-page variables to $60-$FF

VECTOR_OK	=$17
VECTOR_MSG	=$1A
FLOAT2INT_PTR	=$1D ; initialisé mais jamais utilisé
INT2FLOAT_PTR	=$1F ; initialisé mais jamais utilisé
VECTOR_USR	=$21
TERMINATOR1	=$24
TERMINATOR2	=$25
LINESIZE	=$26
VARFOUND	=$27
STR_FLAG	=$28
INT_FLAG	=$29
KEYW_FLAG	=$2A
ARRAY_FLAG	=$2B
INPUTCODE	=$2C
COMPARECODE	=$2D
KBD_DISABLE	=$2E
CR_DELAY	=$2F
COLUMN_COUNT=$30
TERM_WIDTH	=$31
ENTRYLINE	=$31
MAXTAB		=$32
TMP		    =$33  ; 2 bytes
ENTRYBUF	=$35
TXTBUFLEN	=80

STK_PTR		=$85
OLD_STK_PTR	=$86
DESC_STACK	=$88

PTR1		=$91
PTR2		=$93
ACC3		=$95
BASTXT		=$9A
VARS		=$9C
ARRAYS		=$9E
ARRAY_END	=$A0
STRING_BOTTOM	=$A2

TMP_STR		=$A4
HIMEM_PTR	=$A6
LINENUM		=$A8
CONTLINE	=$AA
LAST_TXTPTR	=$AC
SAVELINE	=$AE

DATAPTR		=$B0
DATAPTR2	=$B2
VARNAME1	=$B4
VARNAME2	=$B5
VAR_ADDR	=$B6
VAR_ADDR2	=$B8
TXTPTR_SAV2	=$BA
OPCOMP_CODE	=$BC
FN_EVAL		=$BD
STRWORK		=$BF

STRLEN		=$C2
FCT_VECT	=$C3
ACC4		=$C6
ACC5		=$CB
LINESEARCH	=$CE

ACC1		=$D0
EVAL_WORK	=$D6
ACC1_JUSTIF	=$D7
ACC2		=$D8
PROD_SIGN	=$DE
ACC1_EXT	=$DF

SAVETXTPTR	=$E0
NEXTCHAR	=$E2
TXTCHAR	    =$E8
TXTPTR		=$E9
RND_VALUE	=$FA
NUM_BUFFER	=$FF

STACK		=$0100

BYT1		=$24
BYT2		=$2C

; quelques caractères ASCII

NUL		= 0
CTRL_A		= 1
CTRL_C		= 3
CTRL_F		= 6
BELL		= 7
CTRL_H		= 8
CTRL_I		= 9
LF		=$0A
CTRL_K		=$0B
FORMFEED	=$0C
CR		=$0D
CTRL_O		=$0F
CTRL_S		=$13
CTRL_T		=$14
CTRL_X		=$18
ESC		=$1B

SPACE		=$20
DBLQUOTE	=$22
DIARESIS	=$23
DOLLAR		=$24
PERCENTAGE	=$25
AMPERSAND	=$26
QUOTE		=$27
LEFT_PARENT	=$28
RIGHT_PARENT	=$29
PLUS		=$2B
COMMA		=$2C
MINUS		=$2D
DOT		=$2E
ZERO		=$30
COLON		=$3A
SEMICOLON	=$3B
QUESTION_MARK	=$3F

AROBAS		=$40
LETTER_A	=$41
LETTER_E	=$45
LETTER_J	=$4A
LETTER_S	=$53
LETTER_V	=$56
LETTER_Z	=$5A

LEFT_SQUAREBRACKET	=$5B
BACKSLASH	=$5C
RIGHT_SQUAREBRACKET	=$5D
DEL		=$7F

; liste des tokens

TOKEN_END	= 128
TOKEN_FOR	= 129
TOKEN_NEXT	= 130
TOKEN_DATA	= 131
TOKEN_INPUT	= 132
TOKEN_DIM	= 133
TOKEN_READ	= 134
TOKEN_LET	= 135
TOKEN_GOTO	= 136
TOKEN_RUN	= 137
TOKEN_IF	= 138
TOKEN_RESTORE	= 139
TOKEN_GOSUB	= 140
TOKEN_RETURN	= 141
TOKEN_REM	= 142
TOKEN_STOP	= 143
TOKEN_ON	= 144
TOKEN_NULL	= 145
TOKEN_WAIT	= 146
TOKEN_LOAD	= 147
TOKEN_SAVE	= 148
TOKEN_DEF	= 149
TOKEN_POKE	= 150
TOKEN_PRINT	= 151
TOKEN_CONT	= 152
TOKEN_LIST	= 153
TOKEN_CLEAR	= 154
TOKEN_GET	= 155
TOKEN_NEW	= 156

COMMAND_TOKENS	=	TOKEN_NEW-TOKEN_END+1

TOKEN_TAB	= 157
TOKEN_TO	= 158
TOKEN_FN	= 159
TOKEN_SPC	= 160
TOKEN_THEN	= 161
TOKEN_NOT	= 162
TOKEN_STEP	= 163
TOKEN_PLUS	= 164
TOKEN_MINUS	= 165
TOKEN_TIMES	= 166
TOKEN_DIV	= 167
TOKEN_POWER	= 168
TOKEN_AND	= 169
TOKEN_OR	= 170
TOKEN_GREATER	= 171
TOKEN_EQUAL	= 172
TOKEN_LESS	= 173

TOKEN_SGN	= 174
TOKEN_INT	= 175
TOKEN_ABS	= 176
TOKEN_USR	= 177
TOKEN_FRE	= 178
TOKEN_POS	= 179
TOKEN_SQR	= 180
TOKEN_RND	= 181
TOKEN_LOG	= 182
TOKEN_EXP	= 183
TOKEN_COS	= 184
TOKEN_SIN	= 185
TOKEN_TAN	= 186
TOKEN_ATN	= 187
TOKEN_PEEK	= 188
TOKEN_LEN	= 189
TOKEN_STR	= 190
TOKEN_VAL	= 191
TOKEN_ASC	= 192
TOKEN_CHR	= 193
TOKEN_LEFT	= 194
TOKEN_RIGHT	= 195
TOKEN_MID	= 196
TOKEN_GO	= 197

COMMANDTAB
	.word ENDCOMMAND-1
	.word FOR-1
	.word NEXT-1
	.word DATA-1
	.word INPUT-1
	.word DIM-1
	.word READ-1
	.word LET-1
	.word GOTO-1
	.word RUN-1
	.word IFCOMMAND-1
	.word RESTORE-1
	.word GOSUB-1
	.word RETURN-1
	.word REM-1
	.word STOP-1
	.word ON-1
	.word NULL-1
	.word WAIT-1
	.word LOAD-1
	.word SAVE-1
	.word DEF-1
	.word POKE-1
	.word PRINT-1
	.word CONT-1
	.word LIST-1
	.word CLEAR-1
	.word GET-1
	.word NEW-1

FONCTIONTAB
	.word SGN
	.word INT
	.word ABS_FCT
	.word VECTOR_USR
	.word FREE
	.word POS
	.word SQR
	.word RND
	.word LOG_FCT
	.word EXP_FCT
	.word COS_FCT
	.word SIN_FCT
	.word TAN_FCT
	.word ATN_FCT
	.word PEEK
	.word LEN_FCT
	.word STR_FCT
	.word VAL_FCT
	.word ASC_FCT
	.word CHR_FCT
	.word LEFT_FCT
	.word RIGHT_FCT
	.word MID_FCT

OPERATORS
	.byt $79
	.word LD668-1
	.byt $79
	.word LD651-1
	.byt $7B
	.word LD883-1
	.byt $7B
	.word LD99C-1
	.byt $7F
	.word LDDDE-1
	.byt $50
	.word LCE04-1
	.byt $46
	.word LCE01-1
	.byt $7D
	.word LDE17-1
	.byt $5A
	.word LCD5E-1
	.byt $64
	.word LCE31-1

KEYWORDS	.byt "EN","D"+$80
	.byt "FO","R"+$80
	.byt "NEX","T"+$80
	.byt "DAT","A"+$80
	.byt "INPU","T"+$80
	.byt "DI","M"+$80
	.byt "REA","D"+$80
	.byt "LE","T"+$80
	.byt "GOT","O"+$80
	.byt "RU","N"+$80
	.byt "I","F"+$80
	.byt "RESTOR","E"+$80
	.byt "GOSU","B"+$80
	.byt "RETUR","N"+$80
	.byt "RE","M"+$80
	.byt "STO","P"+$80
	.byt "O","N"+$80
	.byt "NUL","L"+$80
	.byt "WAI","T"+$80
	.byt "LOA","D"+$80
	.byt "SAV","E"+$80
	.byt "DE","F"+$80
	.byt "POK","E"+$80
	.byt "PRIN","T"+$80
	.byt "CON","T"+$80
	.byt "LIS","T"+$80
	.byt "CLEA","R"+$80
	.byt "GE","T"+$80
	.byt "NE","W"+$80
	.byt "TAB","("+$80
	.byt "T","O"+$80
	.byt "F","N"+$80
	.byt "SPC","("+$80
	.byt "THE","N"+$80
	.byt "NO","T"+$80
	.byt "STE","P"+$80
	.byt "+"+$80
	.byt "-"+$80
	.byt "*"+$80
	.byt "/"+$80
	.byt "^^"+$80
	.byt "AN","D"+$80
	.byt "O","R"+$80
	.byt ">"+$80
	.byt "="+$80
	.byt "<"+$80
	.byt "SG","N"+$80
	.byt "IN","T"+$80
	.byt "AB","S"+$80
	.byt "US","R"+$80
	.byt "FR","E"+$80
	.byt "PO","S"+$80
	.byt "SQ","R"+$80
	.byt "RN","D"+$80
	.byt "LO","G"+$80
	.byt "EX","P"+$80
	.byt "CO","S"+$80
	.byt "SI","N"+$80
	.byt "TA","N"+$80
	.byt "AT","N"+$80
	.byt "PEE","K"+$80
	.byt "LE","N"+$80
	.byt "STR","$"+$80
	.byt "VA","L"+$80
	.byt "AS","C"+$80
	.byt "CHR","$"+$80
	.byt "LEFT","$"+$80
	.byt "RIGHT","$"+$80
	.byt "MID","$"+$80
	.byt "G","O"+$80
	.byt "",0

ERRMESSAGES
LC16B	.byt "NEXT WITHOUT FO","R"+$80
WITHOUTFOR_MSG	= LC16B-ERRMESSAGES

LC17B	.byt "SYNTA","X"+$80
SYNTAX_MSG		= LC17B-ERRMESSAGES

LC181	.byt "RETURN WITHOUT GOSU","B"+$80
WITHOUTGOSUB_MSG	= LC181-ERRMESSAGES

LC195	.byt "OUT OF DAT","A"+$80
OUTOFDATA_MSG		= LC195-ERRMESSAGES

LC1A0	.byt "ILLEGAL QUANTIT","Y"+$80
ILLEGALQUANT_MSG		= LC1A0-ERRMESSAGES

LC1B0	.byt "OVERFLO","W"+$80
OVERFLOW_MSG		= LC1B0-ERRMESSAGES

LC1B8	.byt "OUT OF MEMOR","Y"+$80
OUTOFMEM_MSG	= LC1B8-ERRMESSAGES

LC1C5	.byt "UNDEF'D STATEMEN","T"+$80
UNDEFLINE_MSG	= LC1C5-ERRMESSAGES

LC1D6	.byt "BAD SUBSCRIP","T"+$80
BADSUBSCRIPT_MSG		= LC1D6-ERRMESSAGES

LC1E3	.byt "REDIM'D ARRA","Y"+$80
REDIMARRAY_MSG		= LC1E3-ERRMESSAGES

LC1F0	.byt "DIVISION BY ZER","O"+$80
DIVBYZERO_MSG		= LC1F0-ERRMESSAGES

LC200	.byt "ILLEGAL DIREC","T"+$80
ILLEGALDIRECT_MSG		= LC200-ERRMESSAGES

LC20E	.byt "TYPE MISMATC","H"+$80
TYPEMISMATCH_MSG		= LC20E-ERRMESSAGES

LC21B	.byt "STRING TOO LON","G"+$80
STRINGTOOLONG_MSG		= LC21B-ERRMESSAGES

LC22A	.byt "FORMULA TOO COMPLE","X"+$80
FORMTOOCOMPLEX_MSG	= LC22A-ERRMESSAGES

LC23D	.byt "CAN'T CONTINU","E"+$80
CANTCONT_MSG	= LC23D-ERRMESSAGES

LC24B	.byt "UNDEF'D FUNCTIO","N"+$80
UNDEFFCT_MSG	= LC24B-ERRMESSAGES

LC25B	.byt " ERROR",0
LC262	.byt " IN ",0
LC267	.byt $0D,$0A,"OK",$0D,$0A,0
LC26E	.byt $0D,$0A," BREAK",0

;C3CA
LC277	tsx
	inx
	inx
	inx
	inx
LC27C	lda STACK+1,x
	cmp #TOKEN_FOR
	bne LC2A4
	lda VAR_ADDR2+1
	bne LC291
	lda STACK+2,x
	sta VAR_ADDR2
	lda STACK+3,x
	sta VAR_ADDR2+1
LC291	cmp STACK+3,x
	bne LC29D
	lda VAR_ADDR2
	cmp STACK+2,x
	beq LC2A4
LC29D	txa
	clc
	adc #18
	tax
	bne LC27C
LC2A4	rts

;C3C6
LC2A5	jsr LC2F5
	sta ARRAY_END
	sty ARRAY_END+1
LC2AC	sec
	lda ACC4+3
	sbc LINESEARCH
	sta PTR1
	tay
	lda ACC4+4
	sbc LINESEARCH+1
	tax
	inx
	tya
	beq LC2E0
	lda ACC4+3
	sec
	sbc PTR1
	sta ACC4+3
	bcs LC2C9
	dec ACC4+4
	sec
LC2C9	lda ACC4+1
	sbc PTR1
	sta ACC4+1
	bcs LC2D9
	dec ACC4+2
	bcc LC2D9
LC2D5	lda (ACC4+3),y
	sta (ACC4+1),y
LC2D9	dey
	bne LC2D5
	lda (ACC4+3),y
	sta (ACC4+1),y
LC2E0	dec ACC4+4
	dec ACC4+2
	dex
	bne LC2D9
	rts

;C437
LC2E8	asl
	adc #62
	bcs LC322
	sta PTR1
	tsx
	cpx PTR1
	bcc LC322
	rts

;C444
LC2F5	cpy STRING_BOTTOM+1
	bcc LC321
	bne LC2FF
	cmp STRING_BOTTOM
	bcc LC321
LC2FF	pha
	ldx #9
	tya
LC303	pha
	lda ACC4,x
	dex
	bpl LC303
	jsr LD323
	ldx #256-9
LC30E	pla
	sta ACC1,x
	inx
	bmi LC30E
	pla
	tay
	pla
	cpy STRING_BOTTOM+1
	bcc LC321
	bne LC322
	cmp STRING_BOTTOM
	bcs LC322
LC321	rts

;C47C
LC322	ldx #OUTOFMEM_MSG
LC324	lsr KBD_DISABLE
	jsr LC9BA
	jsr LCA30
LC32C	lda LC16B,x
	pha
	and #%01111111
	jsr LCA32
	inx
	pla
	bpl LC32C
	jsr LC558
	lda #< LC25B
	ldy #> LC25B
LC340	jsr LCA10
	ldy LINENUM+1
	iny
	beq LC34B
	jsr LDC60
LC34B	lsr KBD_DISABLE
	lda #< LC267
	ldy #> LC267
	jsr VECTOR_MSG
LC354	jsr LC42C
	stx TXTPTR
	sty TXTPTR+1
	jsr NEXTCHAR
	tax
	beq LC354
	ldx #255
	stx LINENUM+1
	bcc LC36D
	jsr LC46C
	jmp LC69E
LC36D	jsr LC8B1
	jsr LC46C
	sty LINESIZE
	jsr LC4F4
	bcc LC3BE
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
	adc #256-1
	sta VARS+1
	sbc LINESEARCH+1
	tax
	sec
	lda LINESEARCH
	sbc VARS
	tay
	bcs LC3A8
	inx
	dec PTR2+1
LC3A8	clc
	adc PTR1
	bcc LC3B0
	dec PTR1+1
	clc
LC3B0	lda (PTR1),y
	sta (PTR2),y
	iny
	bne LC3B0
	inc PTR1+1
	inc PTR2+1
	dex
	bne LC3B0
LC3BE	jsr LC53A
	jsr LC3F9
	lda ENTRYBUF
	beq LC354
	clc
	lda VARS
	sta ACC4+3
	adc LINESIZE
	sta ACC4+1
	ldy VARS+1
	sty ACC4+4
	bcc LC3D8
	iny
LC3D8	sty ACC4+2
	jsr LC2A5
	lda ARRAY_END
	ldy ARRAY_END+1
	sta VARS
	sty VARS+1
	ldy LINESIZE
	dey
LC3E8	lda ENTRYLINE,y
	sta (LINESEARCH),y
	dey
	bpl LC3E8
LC3F0	jsr LC53A
	jsr LC3F9
	jmp LC354

;C55F
LC3F9	lda BASTXT
	ldy BASTXT+1
	sta PTR1
	sty PTR1+1
	clc
LC402	ldy #1
	lda (PTR1),y
	beq LC425
	ldy #4
LC40A	iny
	lda (PTR1),y
	bne LC40A
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
	bcc LC402
LC425	rts
LC426	dex
	bpl LC42E
LC429	jsr LC9BA
LC42C	ldx #0
LC42E	jsr LC45C
	cmp #BELL
	beq LC449
	cmp #CR
	beq LC459
	cmp #SPACE
	bcc LC42E
	cmp #128
	bcs LC42E
	cmp #AROBAS
	beq LC429
	cmp #DEL
	beq LC426
LC449	cpx #TXTBUFLEN-1
	bcs LC452
	sta ENTRYBUF,x
	inx
	bne LC42E
LC452	lda #BELL
	jsr LCA32
	bne LC42E
LC459	jmp LC9B2

;C5E8
LC45C	jsr GET_ECHOED
	cmp #CTRL_O
	bne LC46B
	pha
	lda KBD_DISABLE
	eor #%11111111
	sta KBD_DISABLE
	pla
LC46B	rts

;C5FA
LC46C	ldx TXTPTR
	ldy #4
	sty KEYW_FLAG
LC472	lda 0,x
	cmp #SPACE
	beq LC4AE
	sta TERMINATOR2
	cmp #DBLQUOTE
	beq LC4D2
	bit KEYW_FLAG
	bvs LC4AE
	cmp #QUESTION_MARK
	bne LC48A
	lda #TOKEN_PRINT
	bne LC4AE
LC48A	cmp #ZERO
	bcc LC492
	cmp #SEMICOLON+1
	bcc LC4AE
LC492	sty SAVETXTPTR
	ldy #0
	sty LINESIZE
	dey
	stx TXTPTR
	dex
LC49C	iny
	inx
LC49E	lda 0,x
	sec
	sbc KEYWORDS,y
	beq LC49C
	cmp #%10000000
	bne LC4D9
	ora LINESIZE
LC4AC	ldy SAVETXTPTR
LC4AE	inx
	iny
	sta ENTRYLINE-1,y
	lda ENTRYLINE-1,y
	beq LC4EC
	sec
	sbc #COLON
	beq LC4C1
	cmp #TOKEN_DATA-COLON
	bne LC4C3
LC4C1	sta KEYW_FLAG
LC4C3	sec
	sbc #TOKEN_REM-COLON
	bne LC472
	sta TERMINATOR2
LC4CA	lda 0,x
	beq LC4AE
	cmp TERMINATOR2
	beq LC4AE
LC4D2	iny
	sta ENTRYLINE-1,y
	inx
	bne LC4CA
LC4D9	ldx TXTPTR
	inc LINESIZE
LC4DD	iny
	lda KEYWORDS-1,y
	bpl LC4DD
	lda KEYWORDS,y
	bne LC49E
	lda 0,x
	bpl LC4AC
LC4EC	sta ENTRYLINE+1,y
	lda #ENTRYBUF-1
	sta TXTPTR
	rts

;C6B9
LC4F4	lda BASTXT
	ldx BASTXT+1
LC4F8	ldy #1
	sta LINESEARCH
	stx LINESEARCH+1
	lda (LINESEARCH),y
	beq LC521
	iny
	iny
	lda TMP+1
	cmp (LINESEARCH),y
	bcc LC522
	beq LC50F
	dey
	bne LC518
LC50F	lda TMP
	dey
	cmp (LINESEARCH),y
	bcc LC522
	beq LC522
LC518	dey
	lda (LINESEARCH),y
	tax
	dey
	lda (LINESEARCH),y
	bcs LC4F8
LC521	clc
LC522	rts

;C6EE
NEW	bne LC522
LC525	lda #0
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
LC53A	jsr LC56C
	lda #0
CLEAR	bne LC56B
LC541	lda HIMEM_PTR
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
LC558	ldx #DESC_STACK
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
LC56B	rts

;C73A
LC56C	clc
	lda BASTXT
	adc #256-1
	sta TXTPTR
	lda BASTXT+1
	adc #256-1
	sta TXTPTR+1
	rts
LIST	php
	jsr LC8B1
	jsr LC4F4
	plp
	beq LC598
	jsr TXTCHAR
	beq LC59E
	cmp #TOKEN_MINUS
	bne LC522
	jsr NEXTCHAR
	beq LC598
	jsr LC8B1
	beq LC59E
	rts
LC598	lda #255
	sta TMP
	sta TMP+1
LC59E	pla
	pla
LC5A0	ldy #1
	lda (LINESEARCH),y
	beq LC5DF
	jsr LC6E6
	jsr LC9BA
	iny
	lda (LINESEARCH),y
	tax
	iny
	lda (LINESEARCH),y
	cmp TMP+1
	bne LC5BB
	cpx TMP
	beq LC5BD
LC5BB	bcs LC5DF
LC5BD	sty VAR_ADDR2
	jsr LDC6B
	lda #SPACE
LC5C4	ldy VAR_ADDR2
	and #%01111111
LC5C8	jsr LCA32
	iny
	beq LC5DF
	lda (LINESEARCH),y
	bne LC5E2
	tay
	lda (LINESEARCH),y
	tax
	iny
	lda (LINESEARCH),y
	stx LINESEARCH
	sta LINESEARCH+1
	bne LC5A0
LC5DF	jmp LC34B
LC5E2	bpl LC5C8
	sec
	sbc #128-1
	tax
	sty VAR_ADDR2
	ldy #256-1
LC5EC	dex
	beq LC5F7
LC5EF	iny
	lda KEYWORDS,y
	bpl LC5EF
	bmi LC5EC
LC5F7	iny
	lda KEYWORDS,y
	bmi LC5C4
	jsr LCA32
	bne LC5F7

;C855
FOR	lda #%10000000
	sta ARRAY_FLAG
	jsr LET
	jsr LC277
	bne LC613
	txa
	adc #15
	tax
	txs
LC613	pla
	pla
	lda #18/2
	jsr LC2E8
	jsr LC84C
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
	jsr LCD89
	jsr LCC2C
	jsr LCC29
	lda ACC1+5
	ora #%01111111
	and ACC1+1
	sta ACC1+1
	lda #< LC64B
	ldy #> LC64B
	sta PTR1
	sty PTR1+1
	jmp LCCE6
LC64B	lda #<LD814
	ldy #>LD814
	jsr LDA2C
	jsr TXTCHAR
	cmp #TOKEN_STEP
	bne LC65F
	jsr NEXTCHAR
	jsr LCC29
LC65F	jsr LDAB5
	jsr LCCD7
	lda VAR_ADDR2+1
	pha
	lda VAR_ADDR2
	pha
	lda #TOKEN_FOR
	pha

;C8C1
LC66E	jsr LC6E6
	lda TXTPTR
	ldy TXTPTR+1
	beq LC67D
	sta LAST_TXTPTR
	sty LAST_TXTPTR+1
	ldy #0
LC67D	lda (TXTPTR),y
	bne LC6C1
	ldy #2
	lda (TXTPTR),y
	clc
	bne LC68B
	jmp LC70C
LC68B	iny
	lda (TXTPTR),y
	sta LINENUM
	iny
	lda (TXTPTR),y
	sta LINENUM+1
	tya
	adc TXTPTR
	sta TXTPTR
	bcc LC69E
	inc TXTPTR+1
LC69E	jsr NEXTCHAR
	jsr LC6A7
	jmp LC66E

;C915
LC6A7	beq LC6E5
LC6A9	sbc #128
	bcc LC6BE
	cmp #COMMAND_TOKENS
	bcs LC6C8
	asl
	tay
	lda COMMANDTAB+1,y
	pha
	lda COMMANDTAB,y
	pha
	jmp NEXTCHAR
LC6BE	jmp LET
LC6C1	cmp #COLON
	beq LC69E
LC6C5	jmp LCD92
LC6C8	cmp #TOKEN_GO-128
	bne LC6C5
	jsr NEXTCHAR
	lda #TOKEN_TO
	jsr LCD89
	jmp GOTO

;C952
RESTORE	sec
	lda BASTXT
	sbc #1
	ldy BASTXT+1
	bcs LC6E1
	dey
LC6E1	sta DATAPTR
	sty DATAPTR+1
LC6E5	rts

;C961
; ce qui existe dans la version patchée pour le microtan :
LC6E6	lda KBDCHAR
	cmp #CTRL_C
	beq LC6EF
	lda #1
	rts
LC6EF	nop
	nop
	cmp #CTRL_C

;C971
STOP	bcs LC6F6
ENDCOMMAND	clc
LC6F6	bne LC735
	lda TXTPTR
	ldy TXTPTR+1
	beq LC70A
	sta LAST_TXTPTR
	sty LAST_TXTPTR+1
LC702	lda LINENUM
	ldy LINENUM+1
	sta CONTLINE
	sty CONTLINE+1
LC70A	pla
	pla
LC70C	lda #< LC26E
	ldy #> LC26E
	ldx #0
	stx KBD_DISABLE
	bcc LC719
	jmp LC340
LC719	jmp LC34B

;C9A0
CONT	bne LC735
	ldx #CANTCONT_MSG
	ldy LAST_TXTPTR+1
	bne LC727
	jmp LC324
LC727	lda LAST_TXTPTR
	sta TXTPTR
	sty TXTPTR+1
	lda CONTLINE
	ldy CONTLINE+1
	sta LINENUM
	sty LINENUM+1
LC735	rts
NULL	jsr LD59B
	bne LC735
	inx
	cpx #$F0
	bcs LC744
	dex
	stx CR_DELAY
	rts
LC744	jmp LD04A


SAVE
; ldy #0
; beq *+4
;LC74B
; ldy #1
; ldx #$4C
; lda $13,x
; pha
; dex
; bpl *-4
; ldx #3
; lda $9A,x
; sta $1C,x
; dex
; bpl *-5
; jmp $E219
; nop
; nop
; nop
;LC764
; tya
; pha
; ldy $03
; lda #$ff
; sta ($0A),y
; pla
; dey
; jsr $FDFA
; lda $01
; jsr $C7A5
; rts
    .byt $A0,$00,$F0,$02,$A0,$01,$A2,$4C
    .byt $B5,$13,$48,$CA,$10,$FA,$A2,$03
	.byt $B5,$9A,$95,$1C,$CA,$10,$F9,$4C
	.byt $19,$E2,$EA,$EA,$EA,$98,$48,$A4
	.byt $03,$A9,$FF,$91,$0A,$68,$A8,$20
	.byt $FA,$FD,$A5,$01,$20,$A5,$C7,$60
	.byt "DED",$0D,$0A
LC77C
	.byt "OK",$0D,$0A,0
LC781
	.byt "SAVED",$0D,$0A,0
LOAD
; jsr $C74B
; ldx #$ff
; tsx ; ??? should not it be txs ?
; lda #$4F
; jsr $FE75
; lda #$4B
; jsr $FE75
; jsr $FE73
; lda $9C
; tax
; ldy $9D
; jmp $C3F0
; nop
;LC7A5
; pha
; cmp #$0A
; beq *+5
; jsr $FE75
; tya
; pha
; ldy $03
; lda #$20
; sta ($0A),y
; pla
; tay
; pla
; rts
; .db $EE
; .db $17
; txa
; stx $9C
; sty $9D
; jmp $C3F0
    .byt $20,$4B,$C7,$A2,$FF,$BA,$A9,$4F
	.byt $20,$75,$FE,$A9,$4B,$20,$75,$FE
	.byt $20,$73,$FE,$A5,$9C,$AA,$A4,$9D
	.byt $4C,$F0,$C3,$EA,$48,$C9,$0A,$F0
	.byt $03,$20,$75,$FE,$98,$48,$A4,$03
	.byt $A9,$20,$91,$0A,$68,$A8,$68,$60
	.byt $EE,$17,$8A,$86,$9C,$84,$9D,$4C
	.byt $F0,$C3

;C9BD
RUN	bne LC7C8
	jmp LC53A
LC7C8	jsr LC541
	jmp LC7E2

GOSUB	lda #6/2
	jsr LC2E8
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
LC7E2	jsr TXTCHAR
	jsr GOTO
	jmp LC66E
GOTO	jsr LC8B1
	jsr LC84F
	lda LINENUM+1
	cmp TMP+1
	bcs LC802
	tya
	sec
	adc TXTPTR
	ldx TXTPTR+1
	bcc LC806
	inx
	bcs LC806
LC802	lda BASTXT
	ldx BASTXT+1
LC806	jsr LC4F8
	bcc LC829
	lda LINESEARCH
	sbc #1
	sta TXTPTR
	lda LINESEARCH+1
	sbc #0
	sta TXTPTR+1
LC817	rts

;CA12
RETURN	bne LC817
	lda #256-1
	sta VAR_ADDR2+1
	jsr LC277
	txs
	cmp #TOKEN_GOSUB
	beq LC831
	ldx #WITHOUTGOSUB_MSG
	.byt $2C
LC829	ldx #UNDEFLINE_MSG
	jmp LC324
LC82E	jmp LCD92
LC831	pla
	pla
	sta LINENUM
	pla
	sta LINENUM+1
	pla
	sta TXTPTR
	pla
	sta TXTPTR+1

;CA3C
DATA	jsr LC84C
LC841	tya
	clc
	adc TXTPTR
	sta TXTPTR
	bcc LC84B
	inc TXTPTR+1
LC84B	rts
LC84C	ldx #COLON
	.byt $2C
LC84F	ldx #0
	stx TERMINATOR1
	ldy #0
	sty TERMINATOR2
LC857	lda TERMINATOR2
	ldx TERMINATOR1
	sta TERMINATOR1
	stx TERMINATOR2
LC85F	lda (TXTPTR),y
	beq LC84B
	cmp TERMINATOR2
	beq LC84B
	iny
	cmp #DBLQUOTE
	bne LC85F
	beq LC857

;CA70
IFCOMMAND	jsr LCC3D
	jsr TXTCHAR
	cmp #TOKEN_GOTO
	beq LC87D
	lda #TOKEN_THEN
	jsr LCD89
LC87D	lda ACC1
	bne LC886
REM	jsr LC84F
	beq LC841
LC886	jsr TXTCHAR
	bcs LC88E
	jmp GOTO
LC88E	jmp LC6A7

;CAC2
ON	jsr LD59B
	pha
	cmp #TOKEN_GOSUB
	beq LC89D
LC899	cmp #TOKEN_GOTO
	bne LC82E
LC89D	dec ACC1+4
	bne LC8A5
	pla
	jmp LC6A9
LC8A5	jsr NEXTCHAR
	jsr LC8B1
	cmp #COMMA
	beq LC89D
	pla
LC8B0	rts
LC8B1	ldx #0
	stx TMP
	stx TMP+1
LC8B7	bcs LC8B0
	sbc #ZERO-1
	sta TERMINATOR1
	lda TMP+1
	sta PTR1
	cmp #>(64000/10)
	bcs LC899
	lda TMP
	asl
	rol PTR1
	asl
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
	bcc LC8E5
	inc TMP+1
LC8E5	jsr NEXTCHAR
	jmp LC8B7

;CB1C
LET	jsr LCEA6
	sta VAR_ADDR2
	sty VAR_ADDR2+1
	lda #TOKEN_EQUAL
	jsr LCD89
	lda INT_FLAG
	pha
	lda STR_FLAG
	pha
	jsr LCC3D
	pla
	rol
	jsr LCC2F
	bne LC91F
	pla
LC908	bpl LC91C
	jsr LDAA5
	jsr LCFC1
	ldy #0
	lda ACC1+3
	sta (VAR_ADDR2),y
	iny
	lda ACC1+4
	sta (VAR_ADDR2),y
	rts
LC91C	jmp LDA5A
LC91F	pla
LC920	ldy #2
	lda (ACC1+3),y
	cmp STRING_BOTTOM+1
	bcc LC93F
	bne LC931
	dey
	lda (ACC1+3),y
	cmp STRING_BOTTOM
	bcc LC93F
LC931	ldy ACC1+4
	cpy VARS+1
	bcc LC93F
	bne LC946
	lda ACC1+3
	cmp VARS
	bcs LC946
LC93F	lda ACC1+3
	ldy ACC1+4
	jmp LC95C
LC946	ldy #0
	lda (ACC1+3),y
	jsr LD276
	lda STRWORK
	ldy STRWORK+1
	sta PROD_SIGN
	sty ACC1_EXT
	jsr LD477
	lda #< ACC1
	ldy #> ACC1
LC95C	sta STRWORK
	sty STRWORK+1
	jsr LD4D8
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

;CBA5
LC974	jsr LCA13
LC977	jsr TXTCHAR
PRINT	beq LC9BA
LC97C	beq LC9D8
	cmp #TOKEN_TAB
	beq LC9F0
	cmp #TOKEN_SPC
	clc
	beq LC9F0
	cmp #COMMA
	beq LC9D9
	cmp #SEMICOLON
	beq LCA05
	jsr LCC3D
	bit STR_FLAG
	bmi LC974
	jsr LDC7B
	jsr LD288
	ldy #0
	lda (ACC1+3),y
	clc
	adc COLUMN_COUNT
	cmp TERM_WIDTH
	bcc LC9AA
	jsr LC9BA
LC9AA	jsr LCA13
	jsr LCA2D
	bne LC977
LC9B2	ldy #0
	sty ENTRYBUF,x
	ldx #ENTRYBUF-1
	bne LC9C1
LC9BA	lda #CR
	sta COLUMN_COUNT
	jsr LCA32
LC9C1	lda #LF
	jsr LCA32
LC9C6	txa
	pha
	ldx CR_DELAY
	beq LC9D4
	lda #NUL
LC9CE	jsr LCA32
	dex
	bne LC9CE
LC9D4	stx COLUMN_COUNT
	pla
	tax
LC9D8	rts
LC9D9	lda COLUMN_COUNT
	cmp MAXTAB
	bcc LC9E5
	jsr LC9BA
	jmp LCA05
LC9E5	sec
LC9E6	sbc #14
	bcs LC9E6
	eor #%11111111
	adc #1
	bne LCA00
LC9F0	php
	jsr LD598
	cmp #$29
	bne LCA63
	plp
	bcc LCA01
	txa
	sbc COLUMN_COUNT
	bcc LCA05
LCA00	tax
LCA01	inx
LCA02	dex
	bne LCA0B
LCA05	jsr NEXTCHAR
	jmp LC97C
LCA0B	jsr LCA2D
	bne LCA02
LCA10	jsr LD288
LCA13	jsr LD4A3
	tax
	ldy #0
	inx
LCA1A	dex
	beq LC9D8
	lda (PTR1),y
	jsr LCA32
	iny
	cmp #CR
	bne LCA1A
	jsr LC9C6
	jmp LCA1A

;CCD4
LCA2D	lda #SPACE
	.byt $2C
LCA30	lda #QUESTION_MARK
LCA32	bit KBD_DISABLE
	bmi LCA4E
	pha
	cmp #SPACE
	bcc LCA46
	lda COLUMN_COUNT
	cmp TERM_WIDTH
	bne LCA44
	jsr LC9BA
LCA44	inc COLUMN_COUNT
LCA46	pla
	sty VARFOUND
	jsr PRINT_CHAR
	ldy VARFOUND
LCA4E	and #$FF
	rts

;CD1F
LCA51	lda INPUTCODE
	beq LCA66
	bmi LCA5B
	ldy #256-1
	bne LCA5F
LCA5B	lda SAVELINE
	ldy SAVELINE+1
LCA5F	sta LINENUM
	sty LINENUM+1
LCA63	jmp LCD92
LCA66	lda #<LCBAB
	ldy #>LCBAB
	jsr LCA10
	lda LAST_TXTPTR
	ldy LAST_TXTPTR+1
	sta TXTPTR
	sty TXTPTR+1
	rts

;CD46
GET	jsr LD1A7
	ldx #ENTRYBUF+1
	ldy #0
	sty ENTRYBUF+1
	lda #%01000000
	jsr LCAB7
	rts
INPUT	lsr KBD_DISABLE
	cmp #DBLQUOTE
	bne LCA96
	jsr LCD47
	lda #SEMICOLON
	jsr LCD89
	jsr LCA13
LCA96	jsr LD1A7
	lda #COMMA
	sta TMP+1
	jsr LCAA8
	lda ENTRYBUF
	bne LCAB6
	clc
	jmp LC702
LCAA8	jsr LCA30
	jsr LCA2D
	jmp LC42C

;CD89
READ	ldx DATAPTR
	ldy DATAPTR+1
	.byt $A9		; lda #%10011000
LCAB6	tya
LCAB7	sta INPUTCODE
	stx DATAPTR2
	sty DATAPTR2+1
LCABD	jsr LCEA6
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
	bne LCAF4
	bit INPUTCODE
	bvc LCAE8
	jsr GET_NOECHO
	sta ENTRYBUF
	ldx #ENTRYBUF-1
	ldy #0
	beq LCAF0
LCAE8	bmi LCB5B
	jsr LCA30
	jsr LCAA8
LCAF0	stx TXTPTR
	sty TXTPTR+1
LCAF4	jsr NEXTCHAR
	bit STR_FLAG
	bpl LCB2C
	bit INPUTCODE
	bvc LCB08
	inx
	stx TXTPTR
	lda #0
	sta TERMINATOR1
	beq LCB14
LCB08	sta TERMINATOR1
	cmp #DBLQUOTE
	beq LCB15
	lda #COLON
	sta TERMINATOR1
	lda #COMMA
LCB14	clc
LCB15	sta TERMINATOR2
	lda TXTPTR
	ldy TXTPTR+1
	adc #0
	bcc LCB20
	iny
LCB20	jsr LD28E
	jsr LD5E0
	jsr LC920
	jmp LCB34
LCB2C	jsr LDB7D
	lda INT_FLAG
	jsr LC908
LCB34	jsr TXTCHAR
	beq LCB40
	cmp #COMMA
	beq LCB40
	jmp LCA51
LCB40	lda TXTPTR
	ldy TXTPTR+1
	sta DATAPTR2
	sty DATAPTR2+1
	lda TXTPTR_SAV2
	ldy TXTPTR_SAV2+1
	sta TXTPTR
	sty TXTPTR+1
	jsr TXTCHAR
	beq LCB81
	jsr LCD87
	jmp LCABD
LCB5B	jsr LC84C
	iny
	tax
	bne LCB74
	ldx #OUTOFDATA_MSG
	iny
	lda (TXTPTR),y
	beq LCBD2
	iny
	lda (TXTPTR),y
	sta SAVELINE
	iny
	lda (TXTPTR),y
	iny
	sta SAVELINE+1
LCB74	lda (TXTPTR),y
	tax
	jsr LC841
	cpx #TOKEN_DATA
	bne LCB5B
	jmp LCAF4
LCB81	lda DATAPTR2
	ldy DATAPTR2+1
	ldx INPUTCODE
	bpl LCB8C
	jmp LC6E1
LCB8C	ldy #0
	lda (DATAPTR2),y
	beq LCB99
	lda #< LCB9A
	ldy #> LCB9A
	jmp LCA10
LCB99	rts
LCB9A	.byt "?EXTRA IGNORED",$0D,$0A,0
LCBAB	.byt "?REDO FROM START",$0D,$0A,0

;CE98
NEXT	bne LCBC4
	ldy #0
	beq LCBC7
LCBC4	jsr LCEA6
LCBC7	sta VAR_ADDR2
	sty VAR_ADDR2+1
	jsr LC277
	beq LCBD4
	ldx #WITHOUTFOR_MSG
LCBD2	beq LCC3A
LCBD4	txs
	txa
	clc
	adc #4
	pha
	adc #6
	sta PTR2
	pla
	ldy #1
	jsr LDA2C
	tsx
	lda STACK+9,x
	sta ACC1+5
	lda VAR_ADDR2
	ldy VAR_ADDR2+1
	jsr LD665
	jsr LDA5A
	ldy #1
	jsr LDAE7
	tsx
	sec
	sbc STACK+9,x
	beq LCC17
	lda STACK+15,x
	sta LINENUM
	lda STACK+16,x
	sta LINENUM+1
	lda STACK+18,x
	sta TXTPTR
	lda STACK+17,x
	sta TXTPTR+1
LCC14	jmp LC66E
LCC17	txa
	adc #17
	tax
	txs
	jsr TXTCHAR
	cmp #COMMA
	bne LCC14
	jsr NEXTCHAR
	jsr LCBC4

;CF03
LCC29	jsr LCC3D
LCC2C	clc
	.byt $24
LCC2E	sec
LCC2F	bit STR_FLAG
	bmi LCC36
	bcs LCC38
LCC35	rts
LCC36	bcs LCC35
LCC38	ldx #TYPEMISMATCH_MSG
LCC3A	jmp LC324
LCC3D	ldx TXTPTR
	bne LCC43
	dec TXTPTR+1
LCC43	dec TXTPTR
	ldx #0
	.byt $24
LCC48	pha
	txa
	pha
	lda #2/2
	jsr LC2E8
	jsr LCD26
	lda #0
	sta OPCOMP_CODE
LCC57	jsr TXTCHAR
LCC5A	sec
	sbc #TOKEN_GREATER
	bcc LCC76
	cmp #3
	bcs LCC76
	cmp #1
	rol
	eor #1
	eor OPCOMP_CODE
	cmp OPCOMP_CODE
	bcc LCCCF
	sta OPCOMP_CODE
	jsr NEXTCHAR
	jmp LCC5A
LCC76	ldx OPCOMP_CODE
	bne LCCA6
	bcs LCCFB
	adc #7
	bcc LCCFB
	adc STR_FLAG
	bne LCC87
	jmp LD43A
LCC87	adc #256-1
	sta PTR1
	asl
	adc PTR1
	tay
LCC8F	pla
	cmp OPERATORS,y
	bcs LCD00
	jsr LCC2C
LCC98	pha
LCC99	jsr LCCBF
	pla
	ldy TXTPTR_SAV2
	bpl LCCB8
	tax
	beq LCCFE
	bne LCD09
LCCA6	lsr STR_FLAG
	txa
	rol
	ldx TXTPTR
	bne LCCB0
	dec TXTPTR+1
LCCB0	dec TXTPTR
	ldy #9*3
	sta OPCOMP_CODE
	bne LCC8F
LCCB8	cmp OPERATORS,y
	bcs LCD09
	bcc LCC98
LCCBF	lda OPERATORS+2,y
	pha
	lda OPERATORS+1,y
	pha
	jsr LCCD2
	lda OPCOMP_CODE
	jmp LCC48
LCCCF	jmp LCD92
LCCD2	lda ACC1+5
	ldx OPERATORS,y
LCCD7	tay
	pla
	sta PTR1
	pla
	sta PTR1+1
	inc PTR1
	bne LCCE4
	inc PTR1+1
LCCE4	tya
	pha
LCCE6	jsr LDAA5
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
LCCFB	ldy #256-1
	pla
LCCFE	beq LCD23
LCD00	cmp #100
	beq LCD07
	jsr LCC2C
LCD07	sty TXTPTR_SAV2
LCD09	pla
	lsr
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
LCD23	lda ACC1
	rts
LCD26	lda #0
	sta STR_FLAG
LCD2A	jsr NEXTCHAR
	bcs LCD32
LCD2F	jmp LDB7D
LCD32	jsr LCF30
	bcs LCD9E
	cmp #DOT
	beq LCD2F
	cmp #TOKEN_MINUS
	beq LCD97
	cmp #TOKEN_PLUS
	beq LCD2A
	cmp #DBLQUOTE
	bne LCD56
LCD47	lda TXTPTR
	ldy TXTPTR+1
	adc #0
	bcc LCD50
	iny
LCD50	jsr LD288
	jmp LD5E0
LCD56	cmp #TOKEN_NOT
	bne LCD6D
	ldy #8*3
	bne LCD99
LCD5E	jsr LCFC1
	lda ACC1+4
	eor #%11111111
	tay
	lda ACC1+3
	eor #%11111111
	jmp LD194
LCD6D	cmp #TOKEN_FN
	bne LCD74
	jmp LD1F5
LCD74	cmp #TOKEN_SGN
	bcc LCD7B
	jmp LCDC2
LCD7B	jsr LCD84
	jsr LCC3D
LCD81	lda #RIGHT_PARENT
	.byt $2C
LCD84	lda #LEFT_PARENT
	.byt $2C
LCD87	lda #COMMA
LCD89	ldy #0
	cmp (TXTPTR),y
	bne LCD92
	jmp NEXTCHAR

;D070
LCD92	ldx #SYNTAX_MSG
	jmp LC324
LCD97	ldy #7*3
LCD99	pla
	pla
	jmp LCC99
LCD9E	jsr LCEA6
	sta ACC1+3
	sty ACC1+4
	ldx STR_FLAG
	beq LCDAE
	ldx #0
	stx ACC1_EXT
	rts
LCDAE	ldx INT_FLAG
	bpl LCDBF
	ldy #0
	lda (ACC1+3),y
	tax
	iny
	lda (ACC1+3),y
	tay
	txa
	jmp LD194
LCDBF	jmp LDA2C
LCDC2	asl
	pha
	tax
	jsr NEXTCHAR
	cpx #<(TOKEN_LEFT*2)-1
	bcc LCDEC
	jsr LCD84
	jsr LCC3D
	jsr LCD87
	jsr LCC2E
	pla
	tax
	lda ACC1+4
	pha
	lda ACC1+3
	pha
	txa
	pha
	jsr LD59B
	pla
	tay
	txa
	pha
	jmp LCDF1
LCDEC	jsr LCD7B
	pla
	tay
LCDF1	lda FONCTIONTAB-92,y		; pb 6502 NMos sur Microtan65
	sta FCT_VECT+1
	lda FONCTIONTAB+1-92,y
	sta FCT_VECT+2
	jsr FCT_VECT
	jmp LCC2C
LCE01	ldy #%11111111
	.byt $2C
LCE04	ldy #0
	sty LINESIZE
	jsr LCFC1
	lda ACC1+3
	eor LINESIZE
	sta TERMINATOR1
	lda ACC1+4
	eor LINESIZE
	sta TERMINATOR2
	jsr LDA86
	jsr LCFC1
	lda ACC1+4
	eor LINESIZE
	and TERMINATOR2
	eor LINESIZE
	tay
	lda ACC1+3
	eor LINESIZE
	and TERMINATOR1
	eor LINESIZE
	jmp LD194
LCE31	jsr LCC2F
	bcs LCE49
	lda ACC2+5
	ora #%01111111
	and ACC2+1
	sta ACC2+1
	lda #< ACC2
	ldy #> ACC2
	jsr LDAE5
	tax
	jmp LCE7C

;D12B
LCE49	lda #0
	sta STR_FLAG
	dec OPCOMP_CODE
	jsr LD4A3
	sta ACC1
	stx ACC1+1
	sty ACC1+2
	lda ACC2+3
	ldy ACC2+4
	jsr LD4A7
	stx ACC2+3
	sty ACC2+4
	tax
	sec
	sbc ACC1
	beq LCE71
	lda #1
	bcc LCE71
	ldx ACC1
	lda #256-1
LCE71	sta ACC1+5
	ldy #256-1
	inx
LCE76	iny
	dex
	bne LCE81
	ldx ACC1+5
LCE7C	bmi LCE8D
	clc
	bcc LCE8D
LCE81	lda (ACC2+3),y
	cmp (ACC1+1),y
	beq LCE76
	ldx #256-1
	bcs LCE8D
	ldx #1
LCE8D	inx
	txa
	rol
	and COMPARECODE
	beq LCE96
	lda #256-1
LCE96	jmp LDAC6
LCE99	jsr LCD87
DIM	tax
	jsr LCEAB
	jsr TXTCHAR
	bne LCE99
	rts
LCEA6	ldx #0
	jsr TXTCHAR
LCEAB	stx VARFOUND
LCEAD	sta VARNAME1
	jsr TXTCHAR
	jsr LCF30
	bcs LCEBA
LCEB7	jmp LCD92
LCEBA	ldx #0
	stx STR_FLAG
	stx INT_FLAG
	jsr NEXTCHAR
	bcc LCECA
	jsr LCF30
	bcc LCED5
LCECA	tax
LCECB	jsr NEXTCHAR
	bcc LCECB
	jsr LCF30
	bcs LCECB
LCED5	cmp #DOLLAR
	bne LCEDF
	lda #%11111111
	sta STR_FLAG
	bne LCEEF
LCEDF	cmp #PERCENTAGE
	bne LCEF6
	lda ARRAY_FLAG
	bne LCEB7
	lda #%10000000
	sta INT_FLAG
	ora VARNAME1
	sta VARNAME1
LCEEF	txa
	ora #%10000000
	tax
	jsr NEXTCHAR
LCEF6	stx VARNAME2
	sec
	ora ARRAY_FLAG
	sbc #LEFT_PARENT
	bne LCF02
	jmp LCFD3
LCF02	lda #0
	sta ARRAY_FLAG
	lda VARS
	ldx VARS+1
	ldy #0
LCF0C	stx LINESEARCH+1
LCF0E	sta LINESEARCH
	cpx ARRAYS+1
	bne LCF18
	cmp ARRAYS
	beq LCF3A
LCF18	lda VARNAME1
	cmp (LINESEARCH),y
	bne LCF26
	lda VARNAME2
	iny
	cmp (LINESEARCH),y
	beq LCF8F
	dey
LCF26	clc
	lda LINESEARCH
	adc #7
	bcc LCF0E
	inx
	bne LCF0C
LCF30	cmp #LETTER_A
	bcc LCF39
	sbc #LETTER_Z+1
	sec
	sbc #256-LETTER_Z-1
LCF39	rts
LCF3A	pla
	pha
	cmp #< LCD9E+2
	bne LCF4D
	tsx
	lda STACK+2,x
	cmp #> LCD9E+2
	bne LCF4D
	lda #< LDDAB+2
	ldy #> LDDAB+2
	rts
LCF4D	lda ARRAYS
	ldy ARRAYS+1
	sta LINESEARCH
	sty LINESEARCH+1
	lda ARRAY_END
	ldy ARRAY_END+1
	sta ACC4+3
	sty ACC4+4
	clc
	adc #7
	bcc LCF63
	iny
LCF63	sta ACC4+1
	sty ACC4+2
	jsr LC2A5
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
LCF8F	lda LINESEARCH
	clc
	adc #2
	ldy LINESEARCH+1
	bcc LCF99
	iny
LCF99	sta VAR_ADDR
	sty VAR_ADDR+1
	rts
LCF9E	lda LINESIZE
	asl
	adc #5
	adc LINESEARCH
	ldy LINESEARCH+1
	bcc LCFAA
	iny
LCFAA	sta ACC4+1
	sty ACC4+2
	rts

;D297
LCFAF	.byt $90,$80,$00,$00,$00 ; -32768
LCFB4	jsr NEXTCHAR
	jsr LCC3D
LCFBA	jsr LCC2C
	lda ACC1+5
	bmi LCFCE
LCFC1	lda ACC1
	cmp #128+16
	bcc LCFD0
	lda #< LCFAF
	ldy #> LCFAF
	jsr LDAE5
LCFCE	bne LD04A
LCFD0	jmp LDB25
LCFD3	lda VARFOUND
	ora INT_FLAG
	pha
	lda STR_FLAG
	pha
	ldy #0
LCFDD	tya
	pha
	lda VARNAME2
	pha
	lda VARNAME1
	pha
	jsr LCFB4
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
	beq LCFDD
	sty LINESIZE
	jsr LCD81
	pla
	sta STR_FLAG
	pla
	sta INT_FLAG
	and #%01111111
	sta VARFOUND
	ldx ARRAYS
	lda ARRAYS+1
LD01E	stx LINESEARCH
	sta LINESEARCH+1
	cmp ARRAY_END+1
	bne LD02A
	cpx ARRAY_END
	beq LD063
LD02A	ldy #0
	lda (LINESEARCH),y
	iny
	cmp VARNAME1
	bne LD039
	lda VARNAME2
	cmp (LINESEARCH),y
	beq LD04F
LD039	iny
	lda (LINESEARCH),y
	clc
	adc LINESEARCH
	tax
	iny
	lda (LINESEARCH),y
	adc LINESEARCH+1
	bcc LD01E
LD047	ldx #BADSUBSCRIPT_MSG
	.byt $2C
LD04A	ldx #ILLEGALQUANT_MSG
LD04C	jmp LC324
LD04F	ldx #REDIMARRAY_MSG
	lda VARFOUND
	bne LD04C
	jsr LCF9E
	lda LINESIZE
	ldy #4
	cmp (LINESEARCH),y
	bne LD047
	jmp LD0ED
LD063	jsr LCF9E
	jsr LC2F5
	lda #0
	tay
	sta SAVETXTPTR+1
	ldx #5
	lda VARNAME1
	sta (LINESEARCH),y
	bpl LD077
	dex
LD077	iny
	lda VARNAME2
	sta (LINESEARCH),y
	bpl LD080
	dex
	dex
LD080	stx SAVETXTPTR
	lda LINESIZE
	iny
	iny
	iny
	sta (LINESEARCH),y
LD089	ldx #11
	lda #0
	bit VARFOUND
	bvc LD099
	pla
	clc
	adc #1
	tax
	pla
	adc #0
LD099	iny
	sta (LINESEARCH),y
	iny
	txa
	sta (LINESEARCH),y
	jsr LD14F
	stx SAVETXTPTR
	sta SAVETXTPTR+1
	ldy PTR1
	dec LINESIZE
	bne LD089
	adc ACC4+2
	bcs LD10E
	sta ACC4+2
	tay
	txa
	adc ACC4+1
	bcc LD0BC
	iny
	beq LD10E
LD0BC	jsr LC2F5
	sta ARRAY_END
	sty ARRAY_END+1
	lda #0
	inc SAVETXTPTR+1
	ldy SAVETXTPTR
	beq LD0D0
LD0CB	dey
	sta (ACC4+1),y
	bne LD0CB
LD0D0	dec ACC4+2
	dec SAVETXTPTR+1
	bne LD0CB
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
	bne LD14E
	iny
LD0ED	lda (LINESEARCH),y
	sta LINESIZE
	lda #0
	sta SAVETXTPTR
LD0F5	sta SAVETXTPTR+1
	iny
	pla
	tax
	sta ACC1+3
	pla
	sta ACC1+4
	cmp (LINESEARCH),y
	bcc LD111
	bne LD10B
	iny
	txa
	cmp (LINESEARCH),y
	bcc LD112
LD10B	jmp LD047
LD10E	jmp LC322
LD111	iny
LD112	lda SAVETXTPTR+1
	ora SAVETXTPTR
	clc
	beq LD123
	jsr LD14F
	txa
	adc ACC1+3
	tax
	tya
	ldy PTR1
LD123	adc ACC1+4
	stx SAVETXTPTR
	dec LINESIZE
	bne LD0F5
	sta SAVETXTPTR+1
	ldx #5
	lda VARNAME1
	bpl LD134
	dex
LD134	lda VARNAME2
	bpl LD13A
	dex
	dex
LD13A	stx ACC3+2
	lda #0
	jsr LD158
	txa
	adc ACC4+1
	sta VAR_ADDR
	tya
	adc ACC4+2
	sta VAR_ADDR+1
	tay
	lda VAR_ADDR
LD14E	rts
LD14F	sty PTR1
	lda (LINESEARCH),y
	sta ACC3+2
	dey
	lda (LINESEARCH),y
LD158	sta ACC3+3
	lda #16
	sta ACC5+1
	ldx #0
	ldy #0
LD162	txa
	asl
	tax
	tya
	rol
	tay
	bcs LD10E
	asl SAVETXTPTR
	rol SAVETXTPTR+1
	bcc LD17B
	clc
	txa
	adc ACC3+2
	tax
	tya
	adc ACC3+3
	tay
	bcs LD10E
LD17B	dec ACC5+1
	bne LD162
	rts
FREE	lda STR_FLAG
	beq LD187
	jsr LD4A3
LD187	jsr LD323
	sec
	lda STRING_BOTTOM
	sbc ARRAY_END
	tay
	lda STRING_BOTTOM+1
	sbc ARRAY_END+1

;D499
LD194	ldx #0
	stx STR_FLAG
	sta ACC1+1
	sty ACC1+2
	ldx #128+16
	jmp LDACE
POS	ldy COLUMN_COUNT
LD1A3	lda #0
	beq LD194
LD1A7	ldx LINENUM+1
	inx
	bne LD14E
	ldx #ILLEGALDIRECT_MSG
	.byt $2C
LD1AF	ldx #UNDEFFCT_MSG
	jmp LC324
DEF	jsr LD1E2
	jsr LD1A7
	jsr LCD84
	lda #%10000000
	sta ARRAY_FLAG
	jsr LCEA6
	jsr LCC2C
	jsr LCD81
	lda #TOKEN_EQUAL
	jsr LCD89
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
	jmp LD250
LD1E2	lda #TOKEN_FN
	jsr LCD89
	ora #%10000000
	sta ARRAY_FLAG
	jsr LCEAD
	sta FN_EVAL
	sty FN_EVAL+1
	jmp LCC2C
LD1F5	jsr LD1E2
	lda FN_EVAL+1
	pha
	lda FN_EVAL
	pha
	jsr LCD7B
	jsr LCC2C
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
	beq LD1AF
	sta VAR_ADDR+1
	iny
LD219	lda (VAR_ADDR),y
	pha
	dey
	bpl LD219
	ldy VAR_ADDR+1
	jsr LDA5E
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
	jsr LCC29
	pla
	sta FN_EVAL
	pla
	sta FN_EVAL+1
	jsr TXTCHAR
	beq LD24A
	jmp LCD92
LD24A	pla
	sta TXTPTR
	pla
	sta TXTPTR+1
LD250	ldy #0
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
STR_FCT	jsr LCC2C
	ldy #0
	jsr LDC7D
	pla
	pla
	lda #< NUM_BUFFER
	ldy #> NUM_BUFFER
	beq LD288
LD276	ldx ACC1+3
	ldy ACC1+4
	stx STRWORK
	sty STRWORK+1
LD27E	jsr LD2F1
	stx ACC1+1
	sty ACC1+2
	sta ACC1
	rts
LD288	ldx #DBLQUOTE
	stx TERMINATOR1
	stx TERMINATOR2
LD28E	sta PROD_SIGN
	sty ACC1_EXT
	sta ACC1+1
	sty ACC1+2
	ldy #256-1
LD298	iny
	lda (PROD_SIGN),y
	beq LD2A9
	cmp TERMINATOR1
	beq LD2A5
	cmp TERMINATOR2
	bne LD298
LD2A5	cmp #DBLQUOTE
	beq LD2AA
LD2A9	clc
LD2AA	sty ACC1
	tya
	adc PROD_SIGN
	sta SAVETXTPTR
	ldx ACC1_EXT
	bcc LD2B6
	inx
LD2B6	stx SAVETXTPTR+1
	lda ACC1_EXT
	bne LD2C7
	tya
	jsr LD276
	ldx PROD_SIGN
	ldy ACC1_EXT
	jsr LD485
LD2C7	ldx STK_PTR
	cpx #DESC_STACK+9
	bne LD2D2
	ldx #FORMTOOCOMPLEX_MSG
LD2CF	jmp LC324
LD2D2	lda ACC1
	sta 0,x
	lda ACC1+1
	sta 1,x
	lda ACC1+2
	sta 2,x
	ldy #$00
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
LD2F1	lsr KEYW_FLAG
LD2F3	pha
	eor #256-1
	sec
	adc STRING_BOTTOM
	ldy STRING_BOTTOM+1
	bcs LD2FE
	dey
LD2FE	cpy ARRAY_END+1
	bcc LD313
	bne LD308
	cmp ARRAY_END
	bcc LD313
LD308	sta STRING_BOTTOM
	sty STRING_BOTTOM+1
	sta TMP_STR
	sty TMP_STR+1
	tax
	pla
	rts
LD313	ldx #OUTOFMEM_MSG
	lda KEYW_FLAG
	bmi LD2CF
	jsr LD323
	lda #%10000000
	sta KEYW_FLAG
	pla
	bne LD2F3
LD323	ldx HIMEM_PTR
	lda HIMEM_PTR+1
LD327	stx STRING_BOTTOM
	sta STRING_BOTTOM+1
	ldy #0
	sty FN_EVAL+1
	sty FN_EVAL
	lda ARRAY_END
	ldx ARRAY_END+1
	sta LINESEARCH
	stx LINESEARCH+1
	lda #< DESC_STACK
	ldx #> DESC_STACK
	sta PTR1
	stx PTR1+1
LD341	cmp STK_PTR
	beq LD34A
	jsr LD3C4
	beq LD341
LD34A	lda #7
	sta STRLEN
	lda VARS
	ldx VARS+1
	sta PTR1
	stx PTR1+1
LD356	cpx ARRAYS+1
	bne LD35E
	cmp ARRAYS
	beq LD363
LD35E	jsr LD3BA
	beq LD356
LD363	sta ACC4+1
	stx ACC4+2
	lda #3
	sta STRLEN
LD36B	lda ACC4+1
	ldx ACC4+2
LD36F	cpx ARRAY_END+1
	bne LD37A
	cmp ARRAY_END
	bne LD37A
	jmp LD403
LD37A	sta PTR1
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
	bpl LD36B
	txa
	bmi LD36B
	iny
	lda (PTR1),y
	ldy #0
	asl
	adc #5
	adc PTR1
	sta PTR1
	bcc LD3AB
	inc PTR1+1
LD3AB	ldx PTR1+1
LD3AD	cpx ACC4+2
	bne LD3B5
	cmp ACC4+1
	beq LD36F
LD3B5	jsr LD3C4
	beq LD3AD
LD3BA	lda (PTR1),y
	bmi LD3F3
	iny
	lda (PTR1),y
	bpl LD3F3
	iny
LD3C4	lda (PTR1),y
	beq LD3F3
	iny
	lda (PTR1),y
	tax
	iny
	lda (PTR1),y
	cmp STRING_BOTTOM+1
	bcc LD3D9
	bne LD3F3
	cpx STRING_BOTTOM
	bcs LD3F3
LD3D9	cmp LINESEARCH+1
	bcc LD3F3
	bne LD3E3
	cpx LINESEARCH
	bcc LD3F3
LD3E3	stx LINESEARCH
	sta LINESEARCH+1
	lda PTR1
	ldx PTR1+1
	sta FN_EVAL
	stx FN_EVAL+1
	lda STRLEN
	sta FCT_VECT+1
LD3F3	lda STRLEN
	clc
	adc PTR1
	sta PTR1
	bcc LD3FE
	inc PTR1+1
LD3FE	ldx PTR1+1
	ldy #0
	rts
LD403	lda FN_EVAL+1
	ora FN_EVAL
	beq LD3FE
	lda FCT_VECT+1
	and #4
	lsr
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
	jsr LC2AC
	ldy FCT_VECT+1
	iny
	lda ACC4+1
	sta (FN_EVAL),y
	tax
	inc ACC4+2
	lda ACC4+2
	iny
	sta (FN_EVAL),y
	jmp LD327
LD43A	lda ACC1+4
	pha
	lda ACC1+3
	pha
	jsr LCD26
	jsr LCC2E
	pla
	sta PROD_SIGN
	pla
	sta ACC1_EXT
	ldy #0
	lda (PROD_SIGN),y
	clc
	adc (ACC1+3),y
	bcc LD45A
	ldx #STRINGTOOLONG_MSG
	jmp LC324
LD45A	jsr LD276
	jsr LD477
	lda STRWORK
	ldy STRWORK+1
	jsr LD4A7
	jsr LD489
	lda PROD_SIGN
	ldy ACC1_EXT
	jsr LD4A7
	jsr LD2C7
	jmp LCC57
LD477	ldy #0
	lda (PROD_SIGN),y
	pha
	iny
	lda (PROD_SIGN),y
	tax
	iny
	lda (PROD_SIGN),y
	tay
	pla
LD485	stx PTR1
	sty PTR1+1
LD489	tay
	beq LD496
	pha
LD48D	dey
	lda (PTR1),y
	sta (TMP_STR),y
	tya
	bne LD48D
	pla
LD496	clc
	adc TMP_STR
	sta TMP_STR
	bcc LD49F
	inc TMP_STR+1
LD49F	rts
LD4A0	jsr LCC2E
LD4A3	lda ACC1+3
	ldy ACC1+4
LD4A7	sta PTR1
	sty PTR1+1
	jsr LD4D8
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
	bne LD4D3
	cpy STRING_BOTTOM+1
	bne LD4D3
	cpx STRING_BOTTOM
	bne LD4D3
	pha
	clc
	adc STRING_BOTTOM
	sta STRING_BOTTOM
	bcc LD4D2
	inc STRING_BOTTOM+1
LD4D2	pla
LD4D3	stx PTR1
	sty PTR1+1
	rts
LD4D8	cpy OLD_STK_PTR+1
	bne LD4E8
	cmp OLD_STK_PTR
	bne LD4E8
	sta STK_PTR
	sbc #3
	sta OLD_STK_PTR
	ldy #0
LD4E8	rts
CHR_FCT	jsr LD59E
	txa
	pha
	lda #1
	jsr LD27E
	pla
	ldy #0
	sta (ACC1+1),y
	pla
	pla
	jmp LD2C7
LEFT_FCT	jsr LD55E
	cmp (STRWORK),y
	tya
LD503	bcc LD509
	lda (STRWORK),y
	tax
	tya
LD509	pha
LD50A	txa
LD50B	pha
	jsr LD27E
	lda STRWORK
	ldy STRWORK+1
	jsr LD4A7
	pla
	tay
	pla
	clc
	adc PTR1
	sta PTR1
	bcc LD522
	inc PTR1+1
LD522	tya
	jsr LD489
	jmp LD2C7
RIGHT_FCT	jsr LD55E
	clc
	sbc (STRWORK),y
	eor #256-1
	jmp LD503
MID_FCT	lda #256-1
	sta ACC1+4
	jsr TXTCHAR
	cmp #RIGHT_PARENT
	beq LD545
	jsr LCD87
	jsr LD59B
LD545	jsr LD55E
	beq LD595
	dex
	txa
	pha
	clc
	ldx #0
	sbc (STRWORK),y
	bcs LD50A
	eor #256-1
	cmp ACC1+4
	bcc LD50B
	lda ACC1+4
	bcs LD50B
LD55E	jsr LCD81
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
LEN_FCT	jsr LD57F
	jmp LD1A3
LD57F	jsr LD4A0
	ldx #0
	stx STR_FLAG
	tay
	rts
ASC_FCT	jsr LD57F
	beq LD595
	ldy #0
	lda (PTR1),y
	tay
	jmp LD1A3
LD595	jmp LD04A

;D8C5
LD598	jsr NEXTCHAR
LD59B	jsr LCC29
LD59E	jsr LCFBA
	ldx ACC1+3
	bne LD595
	ldx ACC1+4
	jmp TXTCHAR
VAL_FCT	jsr LD57F
	bne LD5B2
	jmp LD6F5
LD5B2	ldx TXTPTR
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
	bcc LD5CA
	inx
LD5CA	stx PTR2+1
	ldy #0
	lda (PTR2),y
	pha
	lda #0
	sta (PTR2),y
	jsr TXTCHAR
	jsr LDB7D
	pla
	ldy #0
	sta (PTR2),y
LD5E0	ldx SAVETXTPTR
	ldy SAVETXTPTR+1
	stx TXTPTR
	sty TXTPTR+1
	rts
LD5E9	jsr LCC29
	jsr LD5F5
LD5EF	jsr LCD87
	jmp LD59B
LD5F5	lda ACC1+5
	bmi LD595
	lda ACC1
	cmp #128+17
	bcs LD595
	jsr LDB25
	lda ACC1+3
	ldy ACC1+4
	sty TMP
	sta TMP+1
	rts
PEEK	lda TMP+1
	pha
	lda TMP
	pha
	jsr LD5F5
	ldy #0
	lda (TMP),y
	tay
	pla
	sta TMP
	pla
	sta TMP+1
	jmp LD1A3
POKE	jsr LD5E9
	txa
	ldy #0
	sta (TMP),y
	rts
WAIT	jsr LD5E9
	stx VAR_ADDR2
	ldx #0
	jsr TXTCHAR
	beq LD63A
	jsr LD5EF
LD63A	stx VAR_ADDR2+1
	ldy #0
LD63E	lda (TMP),y
	eor VAR_ADDR2+1
	and VAR_ADDR2
	beq LD63E
LD646	rts
LD647	lda #< LDDAB
	ldy #> LDDAB
	jmp LD665
LD64E	jsr LD916
LD651	lda ACC1+5
	eor #256-1
	sta ACC1+5
	eor ACC2+5
	sta PROD_SIGN
	lda ACC1
	jmp LD668
LD660	jsr LD7C9
	bcc LD6A1
LD665	jsr LD916
LD668	bne LD66D
	jmp LDA86

;DB2A
LD66D	ldx ACC1_EXT
	stx FCT_VECT+2
	ldx #ACC2
	lda ACC2
LD675	tay
	beq LD646
	sec
	sbc ACC1
	beq LD6A1
	bcc LD691
	sty ACC1
	ldy ACC2+5
	sty ACC1+5
	eor #256-1
	adc #0
	ldy #0
	sty FCT_VECT+2
	ldx #ACC1
	bne LD695
LD691	ldy #0
	sty ACC1_EXT
LD695	cmp #256-7
	bmi LD660
	tay
	lda ACC1_EXT
	lsr 1,x
	jsr LD7E2
LD6A1	bit PROD_SIGN
	bpl LD6FC
	ldy #ACC1
	cpx #ACC2
	beq LD6AD
	ldy #ACC2
LD6AD	sec
	eor #256-1
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
LD6D0	bcs LD6D5
	jsr LD777
LD6D5	ldy #0
	tya
	clc
LD6D9	ldx ACC1+1
	bne LD727
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
	bne LD6D9
LD6F5	lda #0
LD6F7	sta ACC1
LD6F9	sta ACC1+5
	rts
LD6FC	adc FCT_VECT+2
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
	jmp LD734
LD71B	adc #1
	asl ACC1_EXT
	rol ACC1+4
	rol ACC1+3
	rol ACC1+2
	rol ACC1+1
LD727	bpl LD71B
	sec
	sbc ACC1
	bcs LD6F5
	eor #256-1
	adc #1
	sta ACC1
LD734	bcc LD776

;DBF3
LD736	inc ACC1
	beq LD7AE
    ROR(ACC1+1)
    ROR(ACC1+2)
    ROR(ACC1+3)
    ROR(ACC1+4)
    ROR(ACC1_EXT)
LD776	rts
LD777	lda ACC1+5
	eor #$FF
	sta ACC1+5
LD77D	lda ACC1+1
	eor #$FF
	sta ACC1+1
	lda ACC1+2
	eor #$FF
	sta ACC1+2
	lda ACC1+3
	eor #$FF
	sta ACC1+3
	lda ACC1+4
	eor #$FF
	sta ACC1+4
	lda ACC1_EXT
	eor #$FF
	sta ACC1_EXT
	inc ACC1_EXT
	bne LD7AD
LD79F	inc ACC1+4
	bne LD7AD
	inc ACC1+3
	bne LD7AD
	inc ACC1+2
	bne LD7AD
	inc ACC1+1
LD7AD	rts

;DC39
LD7AE	ldx #OVERFLOW_MSG
	jmp LC324
LD7B3	ldx #ACC3-1
LD7B5	ldy 4,x
	sty ACC1_EXT
	ldy 3,x
	sty 4,x
	ldy 2,x
	sty 3,x
	ldy 1,x
	sty 2,x
	ldy ACC1_JUSTIF
	sty 1,x
LD7C9	adc #8
	bmi LD7B5
	beq LD7B5
	sbc #8
	tay
	lda ACC1_EXT
	bcs LD812

;DC61 à optimiser
LD7D6	pha
	lda 1,x
	and #$80
	lsr 1,x
	ora 1,x
	sta 1,x
	.byt $24
LD7E2	pha
    ROR1(2,x)
    ROR1(3,x)
    ROR1(4,x)
	pla
	php
	lsr
	plp
	bcc LD80F
	ora #$80
LD80F	iny
	bne LD7D6
LD812	clc
	rts
LD814	.byt $81,$00,$00,$00,$00
LD819	.byt $03
	.byt $7F,$5E,$56,$CB,$79
	.byt $80,$13,$9B,$0B,$64
	.byt $80,$76,$38,$93,$16
	.byt $82,$38,$AA,$3B,$20

LD82E	.byt $80,$35,$04,$F3,$34
LD833	.byt $81,$35,$04,$F3,$34
LD838	.byt $80,$80,$00,$00,$00
LD83D	.byt $80,$31,$72,$17,$F8

LOG_FCT	jsr LDAB5
	beq LD849
	bpl LD84C
LD849	jmp LD04A
LD84C	lda ACC1
	sbc #128-1
	pha
	lda #128
	sta ACC1
	lda #<LD82E
	ldy #>LD82E
	jsr LD665
	lda #<LD833
	ldy #>LD833
	jsr LD999
	lda #<LD814
	ldy #>LD814
	jsr LD64E
	lda #<LD819
	ldy #>LD819
	jsr LDEA3
	lda #<LD838
	ldy #>LD838
	jsr LD665
	pla
	jsr LDC1C
	lda #<LD83D
	ldy #>LD83D
LD880	jsr LD916
LD883	bne LD888
	jmp LD915
LD888	jsr LD941
	lda #0
	sta ACC3
	sta ACC3+1
	sta ACC3+2
	sta ACC3+3
	lda ACC1_EXT
	jsr LD8B1
	lda ACC1+4
	jsr LD8B1
	lda ACC1+3
	jsr LD8B1
	lda ACC1+2
	jsr LD8B1
	lda ACC1+1
	jsr LD8B6
	jmp LDA19
LD8B1	bne LD8B6
	jmp LD7B3
LD8B6	lsr
	ora #%10000000
LD8B9	tay
	bcc LD8D5
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

LD8D5
    ROR(ACC3)
    ROR(ACC3+1)
    ROR(ACC3+2)
    ROR(ACC3+3)
    ROR(ACC1_EXT)
	tya
	lsr
	bne LD8B9
LD915	rts
LD916	sta PTR1
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
LD941	lda ACC2
LD943	beq LD964
	clc
	adc ACC1
	bcc LD94E
	bmi LD969
	clc
	.byt $2C
LD94E	bpl LD964
	adc #128
	sta ACC1
	bne LD959
	jmp LD6F9
LD959	lda PROD_SIGN
	sta ACC1+5
	rts
LD95E	lda ACC1+5
	eor #256-1
	bmi LD969
LD964	pla
	pla
	jmp LD6F5
LD969	jmp LD7AE
LD96C	jsr LDA96
	tax
	beq LD982
	clc
	adc #2
	bcs LD969
	ldx #0
	stx PROD_SIGN
	jsr LD675
	inc ACC1
	beq LD969
LD982	rts
LD983	.byt $84,$20,$00,$00,$00
LD988	jsr LDA96
	lda #< LD983
	ldy #> LD983
	ldx #$00
LD991	stx PROD_SIGN
	jsr LDA2C
	jmp LD99C

;DDE4
LD999	jsr LD916
LD99C	beq LDA14
	jsr LDAA5
	lda #0
	sec
	sbc ACC1
	sta ACC1
	jsr LD941
	inc ACC1
	beq LD969
	ldx #256-4
	lda #%00000001
LD9B3	ldy ACC2+1
	cpy ACC1+1
	bne LD9C9
	ldy ACC2+2
	cpy ACC1+2
	bne LD9C9
	ldy ACC2+3
	cpy ACC1+3
	bne LD9C9
	ldy ACC2+4
	cpy ACC1+4
LD9C9	php
	rol
	bcc LD9D6
	inx
	sta ACC3+3,x
	beq LDA04
	bpl LDA08
	lda #%00000001
LD9D6	plp
	bcs LD9E7
LD9D9	asl ACC2+4
	rol ACC2+3
	rol ACC2+2
	rol ACC2+1
	bcs LD9C9
	bmi LD9B3
	bpl LD9C9
LD9E7	tay
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
	jmp LD9D9
LDA04	lda #%01000000
	bne LD9D6
LDA08	asl
	asl
	asl
	asl
	asl
	asl
	sta ACC1_EXT
	plp
	jmp LDA19
LDA14	ldx #DIVBYZERO_MSG
	jmp LC324
LDA19	lda ACC3
	sta ACC1+1
	lda ACC3+1
	sta ACC1+2
	lda ACC3+2
	sta ACC1+3
	lda ACC3+3
	sta ACC1+4
	jmp LD6D5
LDA2C	sta PTR1
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
LDA51	ldx #ACC5
	.byt $2C
LDA54	ldx #ACC4
	ldy #> ACC4
	beq LDA5E
LDA5A	ldx VAR_ADDR2
	ldy VAR_ADDR2+1
LDA5E	jsr LDAA5
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
LDA86	lda ACC2+5
LDA88	sta ACC1+5
	ldx #5
LDA8C	lda ACC1_JUSTIF,x
	sta LINESEARCH+1,x
	dex
	bne LDA8C
	stx ACC1_EXT
	rts
LDA96	jsr LDAA5
LDA99	ldx #6
LDA9B	lda LINESEARCH+1,x
	sta ACC1_JUSTIF,x
	dex
	bne LDA9B
	stx ACC1_EXT
LDAA4	rts
LDAA5	lda ACC1
	beq LDAA4
	asl ACC1_EXT
	bcc LDAA4
LDAAD	jsr LD79F
	bne LDAA4
	jmp LD736
LDAB5	lda ACC1
	beq LDAC2
LDAB9	lda ACC1+5
LDABB	rol
	lda #256-1
	bcs LDAC2
	lda #1
LDAC2	rts

;DF21
SGN	jsr LDAB5
LDAC6	sta ACC1+1
	lda #0
	sta ACC1+2
	ldx #128+8
LDACE	lda ACC1+1
	eor #256-1
	rol
LDAD3	lda #0
	sta ACC1+4
	sta ACC1+3
	stx ACC1
	sta ACC1_EXT
	sta ACC1+5
	jmp LD6D0
ABS_FCT	lsr ACC1+5
	rts
LDAE5	sta PTR2
LDAE7	sty PTR2+1
	ldy #0
	lda (PTR2),y
	iny
	tax
	beq LDAB5
	lda (PTR2),y
	eor ACC1+5
	bmi LDAB9
	cpx ACC1
	bne LDB1C
	lda (PTR2),y
	ora #%10000000
	cmp ACC1+1
	bne LDB1C
	iny
	lda (PTR2),y
	cmp ACC1+2
	bne LDB1C
	iny
	lda (PTR2),y
	cmp ACC1+3
	bne LDB1C
	iny
	lda #%01111111
	cmp ACC1_EXT
	lda (PTR2),y
	sbc ACC1+4
	beq LDB44
LDB1C	lda ACC1+5
	bcc LDB22
	eor #256-1
LDB22	jmp LDABB
LDB25	lda ACC1
	beq LDB73
	sec
	sbc #128+32
	bit ACC1+5
	bpl LDB39
	tax
	lda #256-1
	sta ACC1_JUSTIF
	jsr LD77D
	txa
LDB39	ldx #ACC1
	cmp #256-7
	bpl LDB45
	jsr LD7C9
	sty ACC1_JUSTIF
LDB44	rts
LDB45	tay
	lda ACC1+5
	and #%10000000
	lsr ACC1+1
	ora ACC1+1
	sta ACC1+1
	jsr LD7E2
	sty ACC1_JUSTIF
	rts
INT	lda ACC1
	cmp #128+32
	bcs LDB7C
	jsr LDB25
	sty ACC1_EXT
	lda ACC1+5
	sty ACC1+5
	eor #%10000000
	rol
	lda #128+32
	sta ACC1
	lda ACC1+4
	sta TERMINATOR1
	jmp LD6D0
LDB73	sta ACC1+1
	sta ACC1+2
	sta ACC1+3
	sta ACC1+4
	tay
LDB7C	rts
LDB7D	ldy #0
	ldx #10
LDB81	sty ACC5+1,x
	dex
	bpl LDB81
	bcc LDB97
	cmp #MINUS
	bne LDB90
	stx EVAL_WORK
	beq LDB94
LDB90	cmp #PLUS
	bne LDB99
LDB94	jsr NEXTCHAR
LDB97	bcc LDC08
LDB99	cmp #DOT
	beq LDBD5
	cmp #LETTER_E
	bne LDBE5
	jsr NEXTCHAR
	bcc LDBC7
	cmp #TOKEN_MINUS
	beq LDBB8
	cmp #MINUS
	beq LDBB8
	cmp #TOKEN_PLUS
	beq LDBC4
	cmp #PLUS
	beq LDBC4
	bne LDBC9

LDBB8
    ROR(LINESEARCH+1)
LDBC4	jsr NEXTCHAR
LDBC7	bcc LDC2F
LDBC9	bit LINESEARCH+1
	bpl LDBE5
	lda #0
	sec
	sbc ACC5+2
	jmp LDBE7

LDBD5
	ROR(LINESEARCH)
	bit LINESEARCH
	bvc LDB94
LDBE5	lda ACC5+2
LDBE7	sec
	sbc ACC5+1
	sta ACC5+2
	beq LDC00
	bpl LDBF9
LDBF0	jsr LD988
	inc ACC5+2
	bne LDBF0
	beq LDC00
LDBF9	jsr LD96C
	dec ACC5+2
	bne LDBF9
LDC00	lda EVAL_WORK
	bmi LDC05
	rts
LDC05	jmp LDE17
LDC08	pha
	bit LINESEARCH
	bpl LDC0F
	inc ACC5+1
LDC0F	jsr LD96C
	pla
	sec
	sbc #ZERO
	jsr LDC1C
	jmp LDB94
LDC1C	pha
	jsr LDA96
	pla
	jsr LDAC6
	lda ACC2+5
	eor ACC1+5
	sta PROD_SIGN
	ldx ACC1
	jmp LD668
LDC2F	lda ACC5+2
	cmp #10
	bcc LDC3E
	lda #100
	bit LINESEARCH+1
	bmi LDC4C
	jmp LD7AE
LDC3E	asl
	asl
	clc
	adc ACC5+2
	asl
	clc
	ldy #0
	adc (TXTPTR),y
	sec
	sbc #ZERO
LDC4C	sta ACC5+2
	jmp LDBC4
LDC51	.byt $9B,$3E,$BC,$1F,$FD
LDC56	.byt $9E,$6E,$6B,$27,$FD
LDC5B	.byt $9E,$6E,$6B,$28,$00

;E0BA
LDC60	lda #< LC262
	ldy #> LC262
	jsr LDC78
	lda LINENUM+1
	ldx LINENUM
LDC6B	sta ACC1+1
	stx ACC1+2
	ldx #128+16
	sec
	jsr LDAD3
	jsr LDC7B
LDC78	jmp LCA10
LDC7B	ldy #1
LDC7D	lda #SPACE
	bit ACC1+5
	bpl LDC85
	lda #MINUS
LDC85	sta NUM_BUFFER,y
	sta ACC1+5
	sty SAVETXTPTR
	iny
	lda #ZERO
	ldx ACC1
	bne LDC96
	jmp LDD9E
LDC96	lda #0
	cpx #128
	beq LDC9E
	bcs LDCA7
LDC9E	lda #< LDC5B
	ldy #> LDC5B
	jsr LD880
	lda #256-10+1
LDCA7	sta ACC5+1
LDCA9	lda #< LDC56
	ldy #> LDC56
	jsr LDAE5
	beq LDCD0
	bpl LDCC6
LDCB4	lda #< LDC51
	ldy #> LDC51
	jsr LDAE5
	beq LDCBF
	bpl LDCCD
LDCBF	jsr LD96C
	dec ACC5+1
	bne LDCB4
LDCC6	jsr LD988
	inc ACC5+1
	bne LDCA9
LDCCD	jsr LD647
LDCD0	jsr LDB25
	ldx #1
	lda ACC5+1
	clc
	adc #10
	bmi LDCE5
	cmp #11
	bcs LDCE6
	adc #256-1
	tax
	lda #2
LDCE5	sec
LDCE6	sbc #2
	sta ACC5+2
	stx ACC5+1
	txa
	beq LDCF1
	bpl LDD04
LDCF1	ldy SAVETXTPTR
	lda #DOT
	iny
	sta NUM_BUFFER,y
	txa
	beq LDD02
	lda #ZERO
	iny
	sta NUM_BUFFER,y
LDD02	sty SAVETXTPTR
LDD04	ldy #0
	ldx #128
LDD08	lda ACC1+4
	clc
	adc LDDB0+3,y
	sta ACC1+4
	lda ACC1+3
	adc LDDB0+2,y
	sta ACC1+3
	lda ACC1+2
	adc LDDB0+1,y
	sta ACC1+2
	lda ACC1+1
	adc LDDB0,y
	sta ACC1+1
	inx
	bcs LDD2C
	bpl LDD08
	bmi LDD2E
LDD2C	bmi LDD08
LDD2E	txa
	bcc LDD35
	eor #256-1
	adc #10
LDD35	adc #ZERO-1
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
	bne LDD50
	lda #DOT
	iny
	sta NUM_BUFFER,y
LDD50	sty SAVETXTPTR
	ldy VAR_ADDR
	txa
	eor #256-1
	and #%10000000
	tax
	cpy #9*4
	bne LDD08
	ldy SAVETXTPTR
LDD60	lda NUM_BUFFER,y
	dey
	cmp #ZERO
	beq LDD60
	cmp #DOT
	beq LDD6D
	iny
LDD6D	lda #PLUS
	ldx ACC5+2
	beq LDDA1
	bpl LDD7D
	lda #0
	sec
	sbc ACC5+2
	tax
	lda #MINUS
LDD7D	sta STACK+1,y
	lda #LETTER_E
	sta STACK,y
	txa
	ldx #ZERO-1
	sec
LDD89	inx
	sbc #10
	bcs LDD89
	adc #ZERO+10
	sta STACK+3,y
	txa
	sta STACK+2,y
	lda #0
	sta STACK+4,y
	beq LDDA6
LDD9E	sta NUM_BUFFER,y
LDDA1	lda #0
	sta STACK,y
LDDA6	lda #<(NUM_BUFFER+1)
	ldy #>(NUM_BUFFER+1)
	rts
LDDAB	.byt $80,$00,$00,$00,$00	; 0.5
LDDB0	.byt $FA,$0A,$1F,$00	; -100000000
	.byt $00,$98,$96,$80	;   10000000
	.byt $FF,$F0,$BD,$C0	;   -1000000
	.byt $00,$01,$86,$A0	;     100000
	.byt $FF,$FF,$D8,$F0	;     -10000
	.byt $00,$00,$03,$E8	;       1000
	.byt $FF,$FF,$FF,$9C	;       -100
	.byt $00,$00,$00,$0A	;         10
	.byt $FF,$FF,$FF,$FF	;         -1
SQR	jsr LDA96
	lda #< LDDAB
	ldy #> LDDAB
	jsr LDA2C
LDDDE	beq EXP_FCT
	lda ACC2
	bne LDDE7
	jmp LD6F7
LDDE7	ldx #< FN_EVAL
	ldy #> FN_EVAL
	jsr LDA5E
	lda ACC2+5
	bpl LDE01
	jsr INT
	lda #< FN_EVAL
	ldy #> FN_EVAL
	jsr LDAE5
	bne LDE01
	tya
	ldy TERMINATOR1
LDE01	jsr LDA88
	tya
	pha
	jsr LOG_FCT
	lda #< FN_EVAL
	ldy #> FN_EVAL
	jsr LD880
	jsr EXP_FCT
	pla
	lsr
	bcc LDE21
LDE17	lda ACC1
	beq LDE21
	lda ACC1+5
	eor #256-1
	sta ACC1+5
LDE21	rts
LDE22	.byt $81,$38,$AA,$3B,$29
LDE27	.byt 7
	.byt $71,$34,$58,$3E,$56
	.byt $74,$16,$7E,$B3,$1B
	.byt $77,$2F,$EE,$E3,$85
	.byt $7A,$1D,$84,$1C,$2A
	.byt $7C,$63,$59,$58,$0A
	.byt $7E,$75,$FD,$E7,$C6
	.byt $80,$31,$72,$18,$10
	.byt $81,$00,$00,$00,$00
EXP_FCT	lda #< LDE22
	ldy #> LDE22
	jsr LD880
	lda ACC1_EXT
	adc #80
	bcc LDE60
	jsr LDAAD
LDE60	sta FCT_VECT+2
	jsr LDA99
	lda ACC1
	cmp #128+8
	bcc LDE6E
LDE6B	jsr LD95E
LDE6E	jsr INT
	lda TERMINATOR1
	clc
	adc #129
	beq LDE6B
	sec
	sbc #1
	pha
	ldx #5
LDE7E	lda ACC2,x
	ldy ACC1,x
	sta ACC1,x
	sty ACC2,x
	dex
	bpl LDE7E
	lda FCT_VECT+2
	sta ACC1_EXT
	jsr LD651
	jsr LDE17
	lda #< LDE27
	ldy #> LDE27
	jsr LDEB9
	lda #0
	sta PROD_SIGN
	pla
	jsr LD943
	rts

;E2FD
LDEA3	sta SAVETXTPTR
	sty SAVETXTPTR+1
	jsr LDA54
	lda #< ACC4
	jsr LD880
	jsr LDEBD
	lda #< ACC4
	ldy #> ACC4
	jmp LD880
LDEB9	sta SAVETXTPTR
	sty SAVETXTPTR+1
LDEBD	jsr LDA51
	lda (SAVETXTPTR),y
	sta EVAL_WORK
	ldy SAVETXTPTR
	iny
	tya
	bne LDECC
	inc SAVETXTPTR+1
LDECC	sta SAVETXTPTR
	ldy SAVETXTPTR+1
LDED0	jsr LD880
	lda SAVETXTPTR
	ldy SAVETXTPTR+1
	clc
	adc #5
	bcc LDEDD
	iny
LDEDD	sta SAVETXTPTR
	sty SAVETXTPTR+1
	jsr LD665
	lda #< ACC5
	ldy #> ACC5
	dec EVAL_WORK
	bne LDED0
LDEEC	rts
LDEED	.byt $98,$35,$44,$7A
LDEF1	.byt $68,$28,$B1,$46
RND	jsr LDAB5
	tax
	bmi LDF13
	lda #< RND_VALUE
	ldy #> RND_VALUE
	jsr LDA2C
	txa
	beq LDEEC
	lda #< LDEED
	ldy #> LDEED
	jsr LD880
	lda #< LDEF1
	ldy #> LDEF1
	jsr LD665
LDF13	ldx ACC1+4
	lda ACC1+1
	sta ACC1+4
	stx ACC1+1
	lda #0
	sta ACC1+5
	lda ACC1
	sta ACC1_EXT
	lda #128
	sta ACC1
	jsr LD6D5
	ldx #< RND_VALUE
	ldy #> RND_VALUE
LDF2E	jmp LDA5E
COS_FCT	lda #< LDFAD
	ldy #> LDFAD
	jsr LD665
SIN_FCT	jsr LDA96
	lda #< LDFB2
	ldy #> LDFB2
	ldx ACC2+5
	jsr LD991
	jsr LDA96
	jsr INT
	lda #0
	sta PROD_SIGN
	jsr LD651
	lda #< LDFB7
	ldy #> LDFB7
	jsr LD64E
	lda ACC1+5
	pha
	bpl LDF6A
	jsr LD647
	lda ACC1+5
	bmi LDF6D
	lda COMPARECODE
	eor #256-1
	sta COMPARECODE
LDF6A	jsr LDE17
LDF6D	lda #< LDFB7
	ldy #> LDFB7
	jsr LD665
	pla
	bpl LDF7A
	jsr LDE17
LDF7A	lda #< LDFBC
	ldy #> LDFBC
	jmp LDEA3
TAN_FCT	jsr LDA54
	lda #0
	sta COMPARECODE
	jsr SIN_FCT
	ldx #< FN_EVAL
	ldy #> FN_EVAL
	jsr LDF2E
	lda #< ACC4
	ldy #> ACC4
	jsr LDA2C
	lda #0
	sta ACC1+5
	lda COMPARECODE
	jsr LDFA9
	lda #< FN_EVAL
	ldy #> FN_EVAL
	jmp LD999
LDFA9	pha
	jmp LDF6A
LDFAD	.byt $81,$49,$0F,$DA,$A2
LDFB2	.byt $83,$49,$0F,$DA,$A2
LDFB7	.byt $7F,$00,$00,$00,$00
LDFBC	.byt 5
	.byt $84,$E6,$1A,$2D,$1B
	.byt $86,$28,$07,$FB,$F8
	.byt $87,$99,$68,$89,$01
	.byt $87,$23,$35,$DF,$E1
	.byt $86,$A5,$5D,$E7,$28
	.byt $83,$49,$0F,$DA,$A2

	.byt $A1,$54,$46,$8F,$13	; copyright microsoft
	.byt $8F,$52,$43,$89,$CD

ATN_FCT	lda ACC1+5
	pha
	bpl LDFED
	jsr LDE17
LDFED	lda ACC1
	pha
	cmp #129
	bcc LDFFB
	lda #<LD814
	ldy #>LD814
	jsr LD999
LDFFB	lda #<LE015
	ldy #>LE015
	jsr LDEA3
	pla
	cmp #129
	bcc LE00E
	lda #<LDFAD
	ldy #>LDFAD
	jsr LD64E
LE00E	pla
	bpl LE014
	jmp LDE17
LE014	rts
LE015	.byt 11
	.byt $76,$B3,$83,$BD,$D3
	.byt $79,$1E,$F4,$A6,$F5
	.byt $7B,$83,$FC,$B0,$10
	.byt $7C,$0C,$1F,$67,$CA
	.byt $7C,$DE,$53,$CB,$C1
	.byt $7D,$14,$64,$70,$4C
	.byt $7D,$B7,$EA,$51,$7A
	.byt $7D,$63,$30,$88,$7E
	.byt $7E,$92,$44,$99,$3A
	.byt $7E,$4C,$CC,$91,$C7
	.byt $7F,$AA,$AA,$AA,$13
	.byt $81,$00,$00,$00,$00

; Initialisations (pourraient ne plus être accessibles une fois exécutées)
;EC9C
LE052	inc TXTPTR
	bne LE058
	inc TXTPTR+1
LE058	lda $EA60       ; PATCHED
	cmp #COLON
	bcs LE069
	cmp #SPACE
	beq LE052
	sec
	sbc #ZERO
	sec
	sbc #256-ZERO
LE069	rts
	.byt $80,$4F,$C7,$52,$58 ; random generator seed

LE06F	lda #< LE198
	ldy #> LE198
	jsr LCA10

;ECCC
START	ldx #$FF
	stx LINENUM+1
	txs
	lda #<START
	ldy #>START
	sta VECTOR_OK+1
	sty VECTOR_OK+2
	sta VECTOR_MSG+1
	sty VECTOR_MSG+2
	lda #<LCFC1
	ldy #>LCFC1
	sta FLOAT2INT_PTR
	sty FLOAT2INT_PTR+1
	lda #<LD194
	ldy #>LD194
	sta INT2FLOAT_PTR
	sty INT2FLOAT_PTR+1
	lda #$4C		; opcode JMP
	sta VECTOR_OK
	sta VECTOR_MSG
	sta FCT_VECT
	sta VECTOR_USR
	lda #<LD04A
	ldy #>LD04A
	sta VECTOR_USR+1
	sty VECTOR_USR+2
	lda #80
	sta TERM_WIDTH
	lda #56
	sta MAXTAB
	ldx #29		; FIXED 29 octets transférés
LE0B3
    lda LE052-1,x
	sta NEXTCHAR-1,x
	dex
	bne LE0B3
	lda #$03
	sta STRLEN
	txa
	sta ACC1_JUSTIF
	sta OLD_STK_PTR+1
	sta CR_DELAY
	pha
	sta KBD_DISABLE
	jsr LC9BA
	ldx #DESC_STACK
	stx STK_PTR
	lda #<LE1B8
	ldy #>LE1B8
	jsr LCA10
	jsr LCAA8	; saisie de la taille mémoire
	stx TXTPTR
	sty TXTPTR+1
	jsr NEXTCHAR
	cmp #LETTER_A
	beq LE06F
	tay
	bne LE10D
	lda #<$0400
	ldy #>$0400
	sta BASTXT
	sty BASTXT+1
	sta TMP
	sty TMP+1
	ldy #0
LE0F6	inc TMP
	bne LE0FC
	inc TMP+1
LE0FC	lda #%01010101
	sta (TMP),y
	cmp (TMP),y
	bne LE119
	asl
	sta (TMP),y
	cmp (TMP),y
	bne LE119
	beq LE0F6
LE10D	jsr TXTCHAR
	jsr LC8B1
	tay
	beq LE119
	jmp LCD92
LE119	lda TMP
	ldy TMP+1
	sta HIMEM_PTR
	sty HIMEM_PTR+1
LE121	lda #< LE1C4
	ldy #> LE1C4
	jsr LCA10
	jsr LCAA8
	stx TXTPTR
	sty TXTPTR+1
	jsr NEXTCHAR
	tay
	beq LE151
	jsr LC8B1
	lda TMP+1
	bne LE121
	lda TMP
	cmp #16
	bcc LE121
	sta TERM_WIDTH
LE144	sbc #14
	bcs LE144
	eor #$FF
	sbc #12
	clc
	adc TERM_WIDTH
	sta MAXTAB
LE151	ldx #<$0400
	ldy #>$0400
	stx BASTXT
	sty BASTXT+1
	ldy #0
	tya
	sta (BASTXT),y
	inc BASTXT
	bne LE164
	inc BASTXT+1
LE164	jsr LC525
	lda BASTXT
	ldy BASTXT+1
	jsr LC2F5
	jsr LC9BA
	lda HIMEM_PTR
	sec
	sbc BASTXT
	tax
	lda HIMEM_PTR+1
	sbc BASTXT+1
	jsr LDC6B
	lda #<LE1D3
	ldy #>LE1D3
	jsr LCA10
	lda #<LCA10
	ldy #>LCA10
	sta VECTOR_MSG+1
	sty VECTOR_MSG+2
	lda #<LC34B
	ldy #>LC34B
	sta VECTOR_OK+1
	sty VECTOR_OK+2
	jmp (VECTOR_OK+1)
LE198	.byt $0D,$0A,$0C,"WRITTEN BY WEILAND & GATES",$0D,$0A,0
LE1B8	.byt "MEMORY SIZE",0
LE1C4	.byt "TERMINAL WIDTH",0
LE1D3	.byt " BYTES FREE",$0D,$0A
	.byt $0D,$0A
	.byt "MICROTAN BASIC",$0D,$0A
	.byt "(C) 1980 MICROSOFT",$0D,$0A,0
	.byt 0
	.byt 0
	.byt 0
	.byt 0
	.byt 0
	.byt 0
	.byt 0
	.byt 0
	.byt 0

GET_NOECHO
    .byt 2,1
    rts
GET_ECHOED
	jsr GET_NOECHO
PRINT_CHAR
    .byt 2,0
    rts
