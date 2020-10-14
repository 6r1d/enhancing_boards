# Enhancing boards

Hello! This is a place I will be pushing KiCad boards and documentation for those.
I am doing that to be able to show, discuss and improve those boards, also I want them to be useful for someone.

There are lots of ready boards for DIY enthusiasts, but I can't always find a well-tested layout made in open-source software, so there's always something to improve, too. :-)

## Plans
I am interested in electronic music synthesizers and single-board computers that can be used in those; I intend to test different microcontrollers and sound-related hardware. Besides that, I have a ton of breakout boards from China. I want reusable layouts for chips, so that's something I'll gradually clean up and add here, too.

Currently I'm waiting for a very primitive [ESP32-Wroom](https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf) boards to determine if 3.3V power is a minimal requirement.
If that's the case, I will add my own [ESP32](https://www.espressif.com/en/products/socs/esp32) board here.

### Interesting ICs
There are integrated circuits I really want to use later.

* [STM32F103C8T6](https://www.st.com/resource/en/datasheet/stm32f103c8.pdf) microcontroller, because Maple and Blue Pill were very nice until the clone boards with clone chips started popping up. New ones are really hard to distinguish visually!
* [Azoteq IQS263B](https://www.azoteq.com/product/iqs263b/) capacitive sensor IC, I²C interface. Allows to make capacitive wheels, sliders and buttons.
* [Azoteq IQS550-B000](https://www.azoteq.com/product/iqs550-b000/) capacitive sensor IC, 15 rows, 10 columns, 3584 x 2304 max resolution, I²C interface. Allows to make large capacitive sensor panels. **UPD**: I ordered the test kit from DigiKey and it is being delivered by USPS to Qwintry warehouse right now.
* [CAP1188](https://www.microchip.com/wwwproducts/en/CAP1188) capacitive sensor IC, 8 capacitive sensor inputs, I²C interface.
* [TXS0108E](https://www.ti.com/lit/ds/symlink/txs0108e.pdf) / YF08E and maybe other level converters, since I have those. (There is some concern about the fakes, too, because I saw very different labels for the same chip.)
* [SI4735](https://www.silabs.com/documents/public/data-sheets/Si4730-31-34-35-D60.pdf), radio receiver IC because it is tiny, works, and might be interesting to play with.

## Testing

When I can, I will test the boards using the toner-transfer method, adding a note about the results and fixing the boards. Otherwise, I'll order everything I can't make elsewhere.

If you want to do tests right now, **feel free to create an issue**! I will provide any additional info you'll want for toner-transfer method or I will help with factory Gerber.

## Current boards

| Directory                             | State                            | Description                                         |
| ------------------------------------- | -------------------------------- | --------------------------------------------------- |
| [PCM5102A](/PCM5102A)                 | UNTESTED                         | [PCM5102A](https://www.ti.com/product/PCM5102A) [I²S](https://en.wikipedia.org/wiki/I%C2%B2S) dac with [TPA6132A2](https://www.ti.com/product/TPA6132A2) headphone amp |
| [MIDI I/O](/MIDI_IO)                  | TESTING, currently waiting for SMD components, most parts received | [MIDI](https://en.wikipedia.org/wiki/MIDI) [I/O](https://en.wikipedia.org/wiki/Input/output) board for 5V devices                       |
| [MCP4725 breakout](/MCP4725_breakout) | UNTESTED                         | [I²C](https://en.wikipedia.org/wiki/I%C2%B2C) [DAC](https://en.wikipedia.org/wiki/Digital-to-analog_converter) breakout board, 1 output                    |
| [MCP4728 breakout](/MCP4728_breakout) | UNTESTED                         | [I²C](https://en.wikipedia.org/wiki/I%C2%B2C) [DAC](https://en.wikipedia.org/wiki/Digital-to-analog_converter) breakout board, 4 outputs                   |
| [MUX_4067](/MUX_4067)                 | UNTESTED                         | 16-pin analog / digital [multiplexor](https://en.wikipedia.org/wiki/Multiplexer) breakout board  |




