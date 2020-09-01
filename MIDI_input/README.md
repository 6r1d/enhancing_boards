# MIDI 5V I/O board

![MIDI IO board](/MIDI_input/img/MIDI_input.png?raw=true)

This board is currently intended for use with 5V devices like Arduino.
It has two DIN-5 ports for input and output and 6N138 to isolate input signal.

It is inspired by the fact AliExpress boards for MIDI are not that good and I had to [solder a resistor](https://twitter.com/I_am_6r1d/status/1299311510662021120) straight onto the optocouple
to make one work.

It uses 1k 100 mHz ferrite beads for EMI protection, but doesn't fully match current MIDI DIN specification yet.

Issues and advices are welcome!

## To-Do

- [ ] Check contacts on physical DIN-5 sockets: both pins and sizes
- [ ] Finish compatibility with current [MIDI DIN electrical specification](https://www.midi.org/specifications/item/midi-din-electrical-specification)
- [ ] Test 3V3 mode for Raspberry Pi, add level converters if required

## Credits

* Kicad 3d Packages and library by [W. Lain](kcswalter@member.fsf.org), downloaded at [Smisioto.No-IP.org](http://smisioto.no-ip.org/elettronica/kicad/kicad-en.htm)
