# 5V PCM 5102A interface for Raspberry PI

![](./PCM5102A/img/PCM5102A.png | width=100)

This board essentially consists of a DAC (PCM5102A) and amplifier (TPA6132A2) ICs.

PCM5102A IC is used in PLL operation schematic.
It means SCK pin is not used and frequency generation happens internally, using phase-locked loop control system.
According to the datasheed, this configuration is not in any way bad and even reduces EMI.
I am using PCM5102A because it has high sound quality and mute circuitry.
Also, I ordered a board with this chip to test with Raspberry Pi before starting my own one.

I added TPA6132A2 headphone amplifier to isolate DAC from other devices. It is used in a single-ended input signal mode.
In short, I have concerns about damaging the DAC with short circuit.

Current 2-ldo schematic is inspired by "GY" board from AliExpress. [Example picture](https://i.stack.imgur.com/ZBK8Q.jpg).
I got a working one at [WavGat store](https://aliexpress.ru/item/33001714060.html).

There are also 3-LDO versions of the same schematic by AiDiy.cc.
I guess it has a separate digital, analog and charge pump LDO, and it's AMS 1117-3.3, at that!
It will be nice to test how that works later.

The board is designed in KiCad 5.1.6.

## Progress

I checked schematic using two datasheets for a day. It is still possible to encounter some issues and I haven't tested the board design yet.

## To-Do

* It will be nice to have optocouples to control the DAC and AMP mute circuitry after the prototype is working. (Analyze ChipDip mute circuit below)
* It will be interesting to test 1 and 3 LDO configuration later. It seems the datasheet relies on one LDO, while AiDiy schematic relies on three.

## Datasheets

* [DAC datasheet](https://www.ti.com/lit/ds/symlink/pcm5102a.pdf)
* [AMP datasheet](https://www.ti.com/lit/ds/symlink/tpa6132a2.pdf)

## Other links

* [StackOverflow](https://raspberrypi.stackexchange.com/questions/76188/how-to-make-pcm5102-dac-work-on-raspberry-pi-zerow) question inspiring me to use the initial board
* [Player.ru](http://player.ru/showthread.php?t=188998&page=207) - board photos, jumper pads configuration info
* [Goldilocks Analogue](https://feilipu.files.wordpress.com/2014/04/goldilocksanaloguedacamplifiers.png) schematic, which inspired me to use TPA6132A2 amp.
* [ChipDip.ru circuit](https://static.chipdip.ru/lib/335/DOC004335833.pdf) has an interesting XSMT connection for debouncing mute signal
