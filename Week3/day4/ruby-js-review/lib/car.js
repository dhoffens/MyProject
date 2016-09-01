"use strict";

class Car {

	constructor (model, noise) {
		this.model = model;
		this.noise = noise;
		this.wheels = 4;
	}

	makeNoise () {
		console.log(`${this.model} goes ${this.noise}`);
	};
}

module.exports = Car;