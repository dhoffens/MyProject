var Animal = require("./lib/animal.js")

var dymitri = new Animal("dymitri", "Huff...");
dymitri.makeNoise();
dymitri.shout();

var chewie = new Animal("chewie", "woof");
chewie.makeNoise();
chewie.shout();

dymitri.makeNoise();
dymitri.shout();

chewie.makeNoise();
chewie.shout();


