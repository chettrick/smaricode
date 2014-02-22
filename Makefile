all: smari

smari: smari.asm smari.bat tasm31.exe tasm80.tab
	@export SDL_VIDEODRIVER=dummy; \
	dosbox -exit -securemode smari.bat >/dev/null 2>&1

clean:
	@rm -f SMARI.LST SMARI.HEX

.PHONY: clean
