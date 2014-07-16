PROG=	smari

CC=	zz80asm
CFLAGS=	-l

all: ${PROG}.hex

${PROG}.hex: ${PROG}.asm
	${CC} ${CFLAGS} ${PROG}.asm

load: ${PROG}.hex
	flashloader ${PROG}.hex

clean:
	rm -f ${PROG}.bin ${PROG}.hex ${PROG}.lst

.PHONY: all clean load
