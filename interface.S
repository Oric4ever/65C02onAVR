#include <avr/io.h>
#define regZ r19

.section .text

.global trap
trap:
    cpi   r24,0
    breq  uart_send
    cpi   r24,1
    breq  uart_recv
    ret

.global send_hex
send_hex:
    push  r16
    swap  r16
    rcall send_hexbyte
    pop   r16
send_hexbyte:
    andi  r16,0x0f
    cpi   r16,10
    brlo  1f
    subi  r16,-7
1:  subi  r16,-48
    rjmp  uart_send

.global send_newline
send_newline:
    ldi   r16,'\n'
    rjmp  uart_send
.global send_space
send_space:
    ldi   r16,' '
.global uart_send
uart_send:
    sbis  _SFR_IO_ADDR(UCSR0A),UDRE0
    rjmp  uart_send
    out   _SFR_IO_ADDR(UDR0),r16
uart_wait:
    sbis  _SFR_IO_ADDR(UCSR0A),UDRE0
    rjmp  uart_wait
    ret

.global uart_recv
uart_recv:
;    sbis  _SFR_IO_ADDR(UCSR0A),RXC0
;    rjmp  uart_recv
;    in    r16,_SFR_IO_ADDR(UDR0)
;    ret


    push ZH
    push ZL
    push r17
    lds  r17,kbd_get
wait_not_empty:
    lds  ZL,kbd_put
    cp   ZL,r17
    breq wait_not_empty
    ldi  ZH,hi8(kbd_buffer)
    ldi  ZL,lo8(kbd_buffer)
    add  ZL,r17
    adc  ZH,regZ
    ld   r16,Z
    inc  r17
    andi r17,15
    sts  kbd_get,r17
    pop  r17
    pop  ZL
    pop  ZH
    ret    
