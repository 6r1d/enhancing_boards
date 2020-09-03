# MCP4728 breakout board

![MCP4728 breakout board](/MCP4728_breakout/img/mcp4728.png?raw=true)

## Idea

This breakout board has 4 DAC ports, controlled by I²C protocol. It is based on the default schematic from `MCP4728` datasheet and Adafruit breakout board.

**Attention!** Output voltage will depend on the input! To imagine how that works, let's say you have a 5V source. Integer you are sending using I²C varies from 0 to 4095. Now, when you have 5V input and 4095 on I²C, you'll have 5V on the output. If you set 0 on I²C, you'll get zero voltage. But you can put any value between 0 and 4095, too, getting all possible in-between voltages. Same goes for 3.3V.

It is currently untested, but the board seems simple enough so there should be no errors.

## Documents

[Datasheet](https://ww1.microchip.com/downloads/en/DeviceDoc/22187E.pdf)

## Links

* [Adafruit breakout board](https://learn.adafruit.com/adafruit-mcp4728-i2c-quad-dac/downloads) documentation
