

all: atar862n-rom.bin atar862n-rom.txt atar862n-rom.lst
	head -n 10 atar862n-rom.lst
clean:
	rm -f *.bin


# This produces ASCII art of the bits, for decoding.
atar862n-rom.txt: atar862n-rom.jpg atar862n-rom.jpg.json
	maskromtool $< -a $@ -e


# This produces a .bin file with the GUI settings.
# You could also use GatoROM to decode the ASCII.
atar862n-rom.bin: atar862n-rom.jpg atar862n-rom.jpg.json
	maskromtool $< -o $@ -e

# This produces a disassembly file with the GUI settings.
atar862n-rom.lst: atar862n-rom.bin
	goodasm --marc4 -d -Lab $< >$@


# Attempts to solve for the decoding with YaraX.
solve: atar862n-rom.txt marc4.rule
	gatorom atar862n-rom.txt --solve \
		--solve-yarax marc4.rule
