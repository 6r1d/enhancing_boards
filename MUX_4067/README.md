# 16-pin analog / digital multiplexor breakout board

![Mux image](/MUX_4067/img/MUX_4067.png?raw=true)

## Idea

If you have never used multiplexors, this IC connects a single pin to **one of** the several outputs, where an output pin is picked using **other** digital input pins. Think [railroad switch](https://en.wikipedia.org/wiki/Railroad_switch), but for electronics, not for railroad.

I had some of those mux board around for quite some time and they are working nicely with Arduino, so I decided to make a copy of a very short schematic and to make my own layout. Why? Well, as usual, to test and be sure I can use them in my own devices later.

## Documentation

[Datasheet](https://www.ti.com/lit/ds/symlink/cd74hc4067.pdf)

## To-Do

- [ ] Use a multimeter's continuity testing on the original to ensure I'm using correct pins
- [ ] Order a board prototype
- [ ] Do a bunch of tests to determine it's not worse than normal breakout boards
- [ ] Create a 8-pin layout

## Links

* [SparkFun breakout board](http://cdn.sparkfun.com/datasheets/BreakoutBoards/Analog-Digital-Mux-Breakout-v11.pdf)
* [Arduino code for interacting with Mux](https://www.codrey.com/arduino-projects/analog-multiplexer-demultiplexer-primer/)
