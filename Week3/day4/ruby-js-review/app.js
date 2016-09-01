"use strict";

var Animal = require("./lib/animal.js")

var Car = require("./lib/car.js")

var dymitri = new Animal("dymitri", "Huff...");
// dymitri.makeNoise();
// dymitri.shout();

var chewie = new Animal("chewie", "woof");
// chewie.makeNoise();
// chewie.shout();

var volvo = new Car("Volvo", "Beep boop");
volvo.makeNoise();

var jeep = new Car("Jeep", "Roooooormmmmrm!");
jeep.makeNoise();

var hummer = new Car("Hummer", "RAAARRRRRR!!!");
hummer.makeNoise();