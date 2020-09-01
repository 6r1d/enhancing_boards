# MCP4725 breakout board

![MCP4725 breakout board image](/MCP4725_breakout/img/MCP4725_breakout.png?raw=true)

## Idea

I have a couple MCP4725 boards and I decided I want to copy the layout to KiCad so it's easy to use later in some CV / Gate interface, volume control for an amplifier and so on. Those worked for me in Arduino.

## Notes

MCP4725 chip works with 3.3V and 5V input. It uses I²C interface to operate.
**Attention!** Output voltage will depend on the input!

When I used the chip, I found out there are several chip models and I²C address depends on the model and A0 pin, which might be useful to know. SMD resistor on a jumper pad was marked `103`, so I'd say it's 10 kOhm resistor. Testing a real-life breakout board using Mastech MY-68 multimeter shows `10.03 kOhm`, which is close enough.

`SDA` and `SCL` resistors are marked as `472`, so I think those are 4.7 kOhm resistors. Testing a real-life breakout board with a Mastech MY-68 multimeter shows `4.64 kOhms`, which is close enough, too.

This board is designed in [KiCad 5.1.6](https://kicad-pcb.org/). Issues and advices are welcome!

## Documentation

[MCP4725 Datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/22039d.pdf)

## Links

* [SparkFun](https://www.sparkfun.com/products/12918) breakout board
* [Adafruit tutorial](https://learn.adafruit.com/mcp4725-12-bit-dac-tutorial?view=all)
* [EasyEDA version to compare the layout later](https://easyeda.com/alexander.burykin/I2C_DAC_Breakout_MCP4725_Open_hardware-91xPJ1jBu) by [Alexander Burykin](alexander.burykin)
* [EasyEDA layout](https://easyeda.com/editor#id=e36a5e46d0c54cee9079e0bdedf030fe)
* [LCSC components](https://lcsc.com/search?q=MCP4725) to see the price
* [Additional documentation on MCP4725 (russian)](https://micro-pi.ru/mcp4725-%D1%86%D0%B8%D1%84%D1%80%D0%BE-%D0%B0%D0%BD%D0%B0%D0%BB%D0%BE%D0%B3%D0%BE%D0%B2%D1%8B%D0%B9-%D0%BF%D1%80%D0%B5%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C/)
