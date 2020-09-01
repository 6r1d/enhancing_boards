# 5V PCM 5102A interface for Raspberry PI

![PCM5102A DAC board](/PCM5102A/img/PCM5102A.png?raw=true)

This board essentially consists of a [PCM5102A DAC](https://www.ti.com/lit/ds/symlink/pcm5102a.pdf) and [TPA6132A2 amplifier](https://www.ti.com/lit/ds/symlink/tpa6132a2.pdf) ICs.

[PCM5102A](https://www.ti.com/lit/ds/symlink/pcm5102a.pdf) IC is used in [PLL operation](https://en.wikipedia.org/wiki/Phase-locked_loop) schematic.
It means [SCK pin](https://hackaday.com/2019/04/18/all-you-need-to-know-about-i2s/) is not used and frequency generation happens internally, using phase-locked loop control system.
According to the datasheed, this configuration is not in any way bad and even slightly reduces [electromagnetic interference](https://en.wikipedia.org/wiki/Electromagnetic_interference).
I am using PCM5102A because it has high sound quality and mute circuitry.
Also, I ordered a board with this chip to test with Raspberry Pi before starting my own one.

The board is designed in [KiCad 5.1.6](https://kicad-pcb.org/).

I added [TPA6132A2](https://www.ti.com/lit/ds/symlink/tpa6132a2.pdf) headphone amplifier to isolate DAC from other devices.
It is used in a single-ended input signal mode. I have concerns about damaging the DAC with short circuit, so that's why there's a tiny amplifier IC.

Current 2-ldo schematic is inspired by ["GY" board from AliExpress](https://i.stack.imgur.com/ZBK8Q.jpg).
I got a working one at [WavGat store](https://aliexpress.ru/item/33001714060.html).

There are also 3-ldo versions of the same schematic by AiDiy.cc.
I guess it has a separate digital, analog and charge pump LDO, and it's a well-known [AMS-1117-3.3](http://www.advanced-monolithic.com/pdf/ds1117.pdf), at that!
It will be nice to test if there is any difference in sound later.

## Progress

I checked schematic using two datasheets for a day. It is still possible to encounter some issues and I haven't tested the board design yet.

## To-Do

- [ ] Do a [toner-transfer method](https://hackaday.com/2016/09/12/take-your-pcbs-from-good-to-great-toner-transfer/) test
- [ ] Test with [jumpers](https://en.wikipedia.org/wiki/Jumper_(computing))
- [ ] Remove excess power wiring from the layout
- [ ] Do a second toner-transfer method test board
- [ ] Add labels on the board to mark inputs and outputs
- [ ] Order a test batch at [PCBWay](https://www.pcbway.com/) / [JLCPCB](http://jlcpcb.com/) / etc.
- [ ] Add labels after the best board layout is established
- [ ] It will be nice to have optocouples to control the DAC and AMP mute circuitry after the prototype is working. (Analyze ChipDip mute circuit below)
- [ ] It will be interesting to test 1 and 3 LDO configuration later. It seems the datasheet relies on one LDO, while AiDiy schematic relies on three.
- [ ] Add a MUTE pin controlling optocouples for DAC and AMP ICs

## Datasheets

* [DAC datasheet](https://www.ti.com/lit/ds/symlink/pcm5102a.pdf)
* [AMP datasheet](https://www.ti.com/lit/ds/symlink/tpa6132a2.pdf)

## Other links

* [StackOverflow](https://raspberrypi.stackexchange.com/questions/76188/how-to-make-pcm5102-dac-work-on-raspberry-pi-zerow) question inspiring me to use the initial board
* [Player.ru](http://player.ru/showthread.php?t=188998&page=207) - Hi-Res chinese board photos by maxkur, jumper pads configuration info (page 207)
* [Goldilocks Analogue schematic](https://feilipu.files.wordpress.com/2014/04/goldilocksanaloguedacamplifiers.png), which inspired me to use TPA6132A2 amp.
* [ChipDip.ru circuit](https://static.chipdip.ru/lib/335/DOC004335833.pdf) has an interesting XSMT connection for debouncing mute signal
