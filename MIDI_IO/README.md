# MIDI I/O board

Assembled:

![MIDI IO ports](https://i.imgur.com/nvwDDXi.jpg)

![MIDI IO back](https://i.imgur.com/HxjOJei.jpg)

3D render:

![MIDI IO board](https://i.imgur.com/3CaKhEJ.png)

[PCB photos](https://i.imgur.com/VaKc3Vo.jpg)

## Current state

I have five physical boards and each of those is working. Moreover, long-term tests are done.
I'm still concerned about the device speed and I want to perform 24 hour long tests on 5V and 3.3V devices, as well.

## Specifications

This board has two DIN-5 ports for input and output and [6N138](https://www.vishay.com/docs/83605/6n139.pdf) to isolate input signal. 6N138 optoisolators were bought [here](https://aliexpress.ru/item/32545548201.html?spm=a2g0s.9042311.0.0.264d33edC1LcYz) and were tested by me well.
I've bought my DIN-5 sockets [here](https://aliexpress.ru/item/32402564814.html) on AliExpress, which seems cheap enough.

It is inspired by the fact [AliExpress](http://aliexpress.com/) boards for [MIDI](https://en.wikipedia.org/wiki/MIDI) are not that good and I had to [solder a resistor](https://twitter.com/I_am_6r1d/status/1299311510662021120) straight onto the optocouple leads to make one work.

It uses `1k 100 mHz` [ferrite beads](https://article.murata.com/en-eu/article/basics-of-noise-countermeasures-lesson-4) for [EMI protection](https://en.wikipedia.org/wiki/Electromagnetic_interference), currently [ILBB-0603ER102V](https://static6.arrow.com/aropdfconversion/c4f424f1ec3f9ac2c3a4ec0c3df1e3ee2574f7a5/ilbb0603.pdf) by [Vishay](https://www.vishay.com/).

This board is designed in [KiCad 5.1.6](https://kicad-pcb.org/).
Issues and advices are welcome!

## Testing

I was concerned about the components overheating over a long-term use,
so I decided to "spam" a hardware synthesizer with MIDI messages to check how it behaves.

First test was relatively simple: random notes were sent to Casio Privia synthesizer on low volume for three hours when input voltage was 5v.
I did not notice any glitches in the process (no randomly changing instruments or velocity).
To perform the test, I have used Arduino Uno and Arduino Mega boards.

Then I did a similar test for ~15 minutes on STM32 board (Blue Pill) and ESP32-WROOM board, both sent 3.3 V input to the board.

I also monitored how the signal is received by checking available bytes on UART. I should do more extensive tests later.
I am mostly interested in sending lots of MIDI data from E-MU 0404 to a 3.3V device to understand how well it behaves.

## Components

### 5V mode

This board is initially intended for use with devices, which have 5V [logic level](https://en.wikipedia.org/wiki/Logic_level) like [Arduino](https://www.arduino.cc/)
and 3.3 V board should be different component-wise, not layout-wise.

Schematic contains correct and tested resistor values for 5V,
according to MIDI DIN electrical [specification](https://www.midi.org/specifications-old/item/midi-din-electrical-specification).

This specification doesn't clearly state a resistor value for 6n138 optoisolator, currently it is 220 Ω,
which works for hours in practice, but **should be optimized** later.
The resistor I'm speaking of is called `R4` on KiCad schematic. In MIDI DIN spec it's called `Rd`.
It influences `speed of bit switching` on the optoisolator side connected to `RX` pin and `the power consumption`.

### 3.3 V mode

I have sent and received data on both STM32 and ESP32 using the current design.
`R4` value was the same as in 5V version, i.e. 220 Ω, which might be too low for the task.
While it gives a high switching speed (apparently, I don't have an oscilloscope to check right now),
it is different from the recommended value range, too.

Further tests should adress that and I should test the board with more appropriate resistors.

There are many possible changes to make for 3.3V. Some require changing the layout, some don't.

 * [PJRC](http://web.archive.org/web/20201025215735/https://forum.pjrc.com/threads/45416-Base-Emitter-Resistor-for-6N139-on-MIDI-input) - physics of the process, fixes, 6n137 recommendation
 * [EE StackExchange](https://electronics.stackexchange.com/questions/165255/midi-in-many-circuits) - more on physics, TLP2361 and H11L1 recommendation, possible layout alteration
 * [Samplerbox](https://www.samplerbox.org/article/midiinwithrpi) - recommendations about Raspberry Pi usage, a combination of `R4` = 1k and `R5` = 10k. Comment tells it doesn't work, though.
 * [EE StackExchange](https://electronics.stackexchange.com/questions/288448/minimize-current-consulption-for-midi-input-circuit) topic about power consumption recommends another topology, clamping the output transistor with Schottky diode like `SD101`, `BAS70`, `RB751`
 * [EE StackExchange](https://electronics.stackexchange.com/questions/102884/how-to-calculate-exactly-resistors-values-of-opto-coupler) also has a topic on exact calculation for a pull-up resistor

The **simplest** would be to pick `R4` = 1k, `R5` = 10k and perform the tests between two boards.
"MIDI in many circuits" topic explains that R5 range should be between 4.7 kΩ and 10 kΩ.

## To-Do

- [x] Check contacts on physical DIN-5 sockets: both pins and sizes
- - **UPD**: sockets have arrived, testing soon
- - **UPD-2**: ordered the board, optocouples and diodes arrived, waiting for passive components
- [x] Finish compatibility with current [MIDI DIN electrical specification](https://www.midi.org/specifications/item/midi-din-electrical-specification)
- [x] Clean components up
- [x] Order a PCB
- [x] Assemble a PCB
- [x] Test 3V3 mode on STM32 with available resistors
- [x] Test 3V3 mode on ESP32-WROOM with available resistors
- [ ] Run a high-speed byte transfer through an optocouple and compare sent and received byte for a day
- [ ] Test connection reliability between two 3V3 devices both usin MIDI I/O board
- [ ] Test 3V3 mode for [Raspberry Pi](https://www.raspberrypi.org/), add a level shifter if it will be required. Look at [this article](https://openenergymonitor.org/forum-archive/node/12412.html) if things start to break.

## Credits

* [KiCad](https://kicad-pcb.org/) 3d Packages and library by Walter Lain (`kcswalter` at `member.fsf.org`), downloaded at [Smisioto.No-IP.org](http://smisioto.no-ip.org/elettronica/kicad/kicad-en.htm)
