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

As of January 2026, the decoding is not quite correct.  It should
begin with `7c 0f 19 80`, and the `--decode-marc4 -i` setting produces
these bytes in reverse order at the very end of the image, coming from
the bottom-right corner of the photograph.  Solving with `marc4.rule`
shows that these bytes do occur in the `-i -r 180 --flipx` decoding,
but they occur at 0x1300 instead of 0.

--Travis
