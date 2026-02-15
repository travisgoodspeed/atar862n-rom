Howdy y'all,

This is a photograph of the ROM from an ATAR862N in Atmel's MARC4
series along with a
[MaskRomTool](https://github.com/travisgoodspeed/maskromtool) project
for extracting its bits.
[GoodASM](https://github.com/travisgoodspeed/goodasm) is used for
disassembly.

Kind thanks to Aiden Sander for contributing MARC4 decoding support to
MaskRomTool and to Adam Laurie, whose [Fun with Masked
ROMs](https://adamsblog.rfidiot.org/2013/01/fun-with-masked-roms.html)
article was the first public description of the bit layout.

As of February 2026, the decoding is correct!  Solving with the
`marc4.rule` YARA-X rule correctly finds these settings as the first
of two matches.

--Travis
