# MCP4725 breakout board

![MCP4725 breakout board image](/MCP4725_breakout/img/MCP4725_breakout.png?raw=true)

## Idea

I have a couple MCP4725 boards and I decided I want to copy the layout to [KiCad](https://kicad-pcb.org/) so it's easy to use later in some [CV/Gate](https://en.wikipedia.org/wiki/CV/gate) interface for music production, volume control for an amplifier and so on. Those worked for me in Arduino, giving a stable amount of voltage.

**Attention!** Output voltage will depend on the input! To imagine how that works, let's say you have a 5V source. Integer you are sending using I²C varies from 0 to 4095 (12-bit). Now, when you have 5V input and 4095 on I²C, you'll have 5V on the output. If you set 0 on I²C, you'll get zero voltage. But you can put any value between 0 and 4095, too, getting all possible in-between voltages. Same goes for 3.3V.

## Notes

MCP4725 chip works with both 3.3V and 5V input. It uses I²C interface to operate and needs `SCL` and `SDA` pins to communicate.
There is a library I used by Adafruit and I added it to the links.

When I used the chip, I found out there are several chip models and I²C address depends on the model and A0 pin, which might be useful to know.
SMD resistor on a jumper pad was marked `103`, so I'd say it's 10 kOhm resistor. Testing a real-life breakout board using Mastech MY-68 multimeter shows `10.03 kOhm`, which is close enough.

`SDA` and `SCL` resistors are marked as `472`, so I think those are 4.7 kOhm resistors.
Testing a real-life breakout board with a Mastech MY-68 multimeter shows `4.64 kOhms`, which is close enough, too.

This board is designed in [KiCad 5.1.6](https://kicad-pcb.org/). Issues and advices are welcome!

### Addresses

There are several possible address value for MCP4725 chip.
Those depend on exact chip type and on `A0` pin, which can be tied to `Vss` or `Vdd`.

I found addresses in [I²C devices](https://i2cdevices.org/) site and Adafruit demo.
My IC had `0x60` address.

| Part number | A0 state      | Addr (hex) |
| ----------- | ------------- | ---------- |
| MCP4725A0   | default / GND | 0x60       |
| MCP4725A0   | VCC           | 0x61       |
| MCP4725A1   | default / GND | 0x62       |
| MCP4725A1   | VCC           | 0x63       |
| MCP4725A2   | default / GND | 0x64       |
| MCP4725A2   | VCC           | 0x65       |
| MCP4725A3   | default / GND | 0x66       |
| MCP4725A3   | VCC           | 0x67       |

## Documentation

[MCP4725 Datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/22039d.pdf)

## Links

* [Adafruit library](https://github.com/adafruit/Adafruit_MCP4725)
* [Adafruit tutorial](https://learn.adafruit.com/mcp4725-12-bit-dac-tutorial?view=all)
* [SparkFun](https://www.sparkfun.com/products/12918) breakout board
* [EasyEDA version to compare the layout later](https://easyeda.com/alexander.burykin/I2C_DAC_Breakout_MCP4725_Open_hardware-91xPJ1jBu) by [Alexander Burykin](alexander.burykin)
* [EasyEDA layout](https://easyeda.com/editor#id=e36a5e46d0c54cee9079e0bdedf030fe)
* [LCSC components](https://lcsc.com/search?q=MCP4725) to see the price
* [Additional documentation on MCP4725 (russian)](https://micro-pi.ru/mcp4725-%D1%86%D0%B8%D1%84%D1%80%D0%BE-%D0%B0%D0%BD%D0%B0%D0%BB%D0%BE%D0%B3%D0%BE%D0%B2%D1%8B%D0%B9-%D0%BF%D1%80%D0%B5%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C/)
