"use strict";

class Animal {

	constructor (name, noise) {
	this.name = name;
	this.noise = noise;
}
	makeNoise () {
		console.log( `${this.name} says: ${this.noise}` );
	};
	shout () {
		console.log(this.noise.toUpperCase() );
	};
}
module.exports = Animal;

