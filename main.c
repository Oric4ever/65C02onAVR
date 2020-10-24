#include <stdio.h>
#include <avr/io.h>
#include <util/delay.h>
#include <string.h>
#include "pff/pff.h"

extern void uart_init(void);
extern void kbd_init(void);

int main(void)
{
    _delay_ms(5000);
    kbd_init();
    uart_init();

    /* Init external sram */
    uint8_t tmp = MCUCSR | _BV(JTD); // JTAG conflicts with address bus
    MCUCSR = tmp; // write twice in less than 4 cycles
    MCUCSR = tmp; // to override protection
    MCUCR |= _BV(SRE); // external SRAM enable
    /* A16 = 0 */
    PORTD &= ~_BV(PORTD4);
    DDRD |= _BV(DDD4);

    /* Open 6502 Memory Image */

    FATFS Fatfs;				/* Petit-FatFs work area */
	pf_mount(&Fatfs);	/* Initialize file system */
    char filename[16]="BASIC65.ROM";
    do {
        printf("\nName of 65x02 ROM File: ");
        scanf("%s",filename);
    } while (pf_open(filename) != FR_OK);

    printf("Loading %s... ",filename);
    /* Load ROM at address 0xC000 */
	WORD addr;	/* Memory address */
	UINT br;	/* Bytes read */
	for (addr = 0xC000; (addr & 0xFFFF); addr += 0x200)
		pf_read((void *)addr, 0x200, &br);

    printf("done.\r\n");
    /* Start 65C02 emulation */
    extern void start6502();
    start6502();
    return 0;
}

