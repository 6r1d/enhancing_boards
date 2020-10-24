# MIDI I/O board

Assembled:

![MIDI IO ports](https://i.imgur.com/nvwDDXi.jpg)

![MIDI IO back](https://i.imgur.com/HxjOJei.jpg)

3D render:

![MIDI IO board](https://i.imgur.com/3CaKhEJ.png)

[PCB photos](https://i.imgur.com/VaKc3Vo.jpg)

This board is currently intended for use with devices, which have 5V [logic level](https://en.wikipedia.org/wiki/Logic_level) like [Arduino](https://www.arduino.cc/) and 3.3 V version will be different only component-wise. Check schematic to pick correct resistors or look up MIDI DIN Electrical [Specification](https://www.midi.org/specifications-old/item/midi-din-electrical-specification).
It has two DIN-5 ports for input and output and [6N138](https://www.vishay.com/docs/83605/6n139.pdf) to isolate input signal.
I've bought my DIN-5 sockets [here](https://aliexpress.ru/item/32402564814.html) on AliExpress, which seems cheap enough.

It is inspired by the fact [AliExpress](http://aliexpress.com/) boards for [MIDI](https://en.wikipedia.org/wiki/MIDI) are not that good and I had to [solder a resistor](https://twitter.com/I_am_6r1d/status/1299311510662021120) straight onto the optocouple leads to make one work.

It uses `1k 100 mHz` [ferrite beads](https://article.murata.com/en-eu/article/basics-of-noise-countermeasures-lesson-4) for [EMI protection](https://en.wikipedia.org/wiki/Electromagnetic_interference), currently [ILBB-0603ER102V](https://static6.arrow.com/aropdfconversion/c4f424f1ec3f9ac2c3a4ec0c3df1e3ee2574f7a5/ilbb0603.pdf) by [Vishay](https://www.vishay.com/).

This board is designed in [KiCad 5.1.6](https://kicad-pcb.org/).
Issues and advices are welcome!

## To-Do

- [x] Check contacts on physical DIN-5 sockets: both pins and sizes
- - **UPD**: sockets have arrived, testing soon
- - **UPD-2**: ordered the board, optocouples and diodes arrived, waiting for passive components
- [x] Finish compatibility with current [MIDI DIN electrical specification](https://www.midi.org/specifications/item/midi-din-electrical-specification)
- [x] Clean components up
- [x] Order a PCB
- [x] Assemble a PCB
- [ ] Test 3V3 mode for [Raspberry Pi](https://www.raspberrypi.org/), add a level shifter if it will be required

## Credits

* [KiCad](https://kicad-pcb.org/) 3d Packages and library by Walter Lain (`kcswalter` at `member.fsf.org`), downloaded at [Smisioto.No-IP.org](http://smisioto.no-ip.org/elettronica/kicad/kicad-en.htm)
