function Animal (name, noise) {
	this.name = name;

	this.noise = noise;
}

Animal.prototype.makeNoise = function () {
		console.log(this.name + " says: " + this.noise );
	};


Animal.prototype.shout = function () {
		console.log(this.noise.toUpperCase() );
	};

module.exports = Animal;