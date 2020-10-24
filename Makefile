AVRBIN=~/arduino-1.8.9/hardware/tools/avr/bin
XA=~/Documents/Micro/Oric/xa-2.3.8/xa

GCCOPTS= -std=c99 -Os -Wall -ffunction-sections -fdata-sections
AVROPTS= -DF_CPU=16000000L -mmcu=atmega162
LINKOPTS= -Wl,--gc-sections
OBJCOPYOPTS= --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0

SRCS= 6502.s interface.S main.c uart.c
OBJS= pff/obj/asmfunc.o pff/obj/mmcbbp.o pff/obj/pff.o ../Keyboard/keyboard.o ../Keyboard/french.o

emu65.hex: emu65.elf
	$(AVRBIN)/avr-objcopy -O ihex -j .eeprom $(OBJCOPYOPTS) emu65.elf emu65.eep
	$(AVRBIN)/avr-objcopy -O ihex -R .eeprom emu65.elf emu65.hex
	$(AVRBIN)/avr-size emu65.elf

emu65.elf: $(SRCS) $(OBJS)
	$(AVRBIN)/avr-gcc $(GCCOPTS) $(AVROPTS) $(LINKOPTS) -o emu65.elf $(SRCS) $(OBJS)

6502.s: 6502.m4
	m4 6502.m4 > 6502.s

hexrom.asm: bin2hex bas65.bin
	./bin2hex bas65.bin > hexrom.asm

bin2hex: bin2hex.c
	gcc -o bin2hex bin2hex.c

bas65.rom: bas65.bin
	cat bas65.bin blank.rom > bas65.tmp
	dd if=bas65.tmp of=bas65.rom bs=16K count=1

oric.rom: basic11.asm
	../../Oric/projets/lcc65/bin/frasm -l log.txt -o basic11.hex basic11.asm
	../../Oric/projets/lcc65/bin/hex2oric -o basic11.tap basic11.hex
	dd if=basic11.tap of=oric.rom bs=1 skip=14

bas65.bin: bas65.asm
	$(XA) -o bas65.bin -l bas65.lst bas65.asm

test.bin: test.asm
	$(XA) -o test.bin test.asm 

upload: emu65.hex
	$(AVRBIN)/avrdude -C /etc/avrdude.conf -p m162 -c usbasp -b 1200 \
		-u -U flash:w:emu65.hex

test: 6502_functional_test.a65
	as65/as65 -l -m -w -h0 6502_functional_test.a65
	./bin2hex 6502_functional_test.bin > hexrom.asm

clean:
	rm emu65.elf emu65.hex emu65.eep
