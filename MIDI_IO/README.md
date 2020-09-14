# MIDI 5V I/O board

![MIDI IO board](/MIDI_IO/img/MIDI_input.png?raw=true)

This board is currently intended for use with 5V devices like Arduino.
It has two DIN-5 ports for input and output and [6N138](https://www.vishay.com/docs/83605/6n139.pdf) to isolate input signal.

It is inspired by the fact AliExpress boards for MIDI are not that good and I had to [solder a resistor](https://twitter.com/I_am_6r1d/status/1299311510662021120) straight onto the optocouple to make one work.

It uses 1k 100 mHz ferrite beads for [EMI protection](https://en.wikipedia.org/wiki/Electromagnetic_interference), but doesn't fully match current [MIDI DIN electrical specification](https://www.midi.org/specifications/item/midi-din-electrical-specification) yet.

This board is designed in [KiCad 5.1.6](https://kicad-pcb.org/). Issues and advices are welcome!

## To-Do

- [x] Check contacts on physical DIN-5 sockets: both pins and sizes; **UPD**: sockets have arrived, testing soon; **UPD-2**: ordered the board
- [x] Finish compatibility with current [MIDI DIN electrical specification](https://www.midi.org/specifications/item/midi-din-electrical-specification)
- [x] Clean components up
- [ ] Test 3V3 mode for [Raspberry Pi](https://www.raspberrypi.org/), add level converters if required

## Credits

* Kicad 3d Packages and library by [W. Lain](kcswalter@member.fsf.org), downloaded at [Smisioto.No-IP.org](http://smisioto.no-ip.org/elettronica/kicad/kicad-en.htm)
