# Enhancing boards

Hello! This is a place I will be pushing KiCad boards and documentation for those.
I am doing that to be able to show, discuss and improve those boards, also I want them to be useful for someone.

There are lots of ready boards for DIY enthusiasts, but I can't always find a well-tested layout made in open-source software, so there's always something to improve, too. :-)

## Plans
I am interested in electronic music synthesizers and single-board computers that can be used in those; I intend to test different microcontrollers and sound-related hardware. Besides that, I have a ton of breakout boards from China. I want reusable layouts for chips, so that's something I'll gradually clean up and add here, too.

Currently I'm waiting for a very primitive ESP32-wroom boards to determine if 3.3V power is a minimal requirement.
If that's the case, I will add my own ESP32 board here.

### Interesting ICs
There are integrated circuits I really want to use later.

* [STM32F103C8T6](https://www.st.com/resource/en/datasheet/stm32f103c8.pdf) microcontroller, because Maple and Blue Pill were very nice until the clone boards with clone chips started popping up. New ones are really hard to distinguish visually!
* [Azoteq IQS263B](https://www.azoteq.com/product/iqs263b/) capacitive sensor IC, I²C interface. Allows to make capacitive wheels, sliders and buttons.
* [Azoteq IQS550-B000](https://www.azoteq.com/product/iqs550-b000/) capacitive sensor IC, 15 rows, 10 columns, 3584 x 2304 max resolution, I²C interface. Allows to make large capacitive sensor panels.
* [CAP1188](https://www.microchip.com/wwwproducts/en/CAP1188) capacitive sensor IC, 8 capacitive sensor inputs, I²C interface.

## Testing

When I can, I will test the boards using the toner-transfer method, adding a note about the results and fixing the boards. Otherwise, I'll order everything I can't make elsewhere.

If you want to do tests right now, **feel free to create an issue**! I will provide any additional info you'll want for toner-transfer method or I will help with factory Gerber.

## Current boards

| Directory                             | State                            | Description                                         |
| ------------------------------------- | -------------------------------- | --------------------------------------------------- |
| [PCM5102A](/PCM5102A)                 | UNTESTED                         | PCM5102A [I²S](https://en.wikipedia.org/wiki/I%C2%B2S) dac with TPA6132A2 headphone amp |
| [MIDI input](/MIDI_input)             | UNTESTED, waiting for components | MIDI I/O board for 5V devices                       |
| [MCP4725 breakout](/MCP4725_breakout) | UNTESTED                         | I²C DAC breakout board                              |
| [MUX_4067](/MUX_4067)                 | UNTESTED                         | 16-pin analog / digital multiplexor breakout board  |
