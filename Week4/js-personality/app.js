"use strict";

var read = require('read');

var questionStrings = [
	"Do you find it difficult to introduce yourself to others?",
	"Do you find yourself initiating conversations?",
	"Do you feel superior to others?",
	"Do you clean up after yourself?",
	"Do you enjoy being the center of attention?",
	"Do you pick up a piece of food and put it back?",
	"Did you lie??"
];

function theCallbackFunction (theError, theAnswer) {
	console.log("");
	console.log("Answer recorded");
	console.log(`Answer: ${theAnswer}`);

	i += 1;
	
	if (i < questionStrings.length) {
		var options = { prompt: `Question #${i+1}: ${questionStrings[i]}`}
		console.log("");
		read(options, theCallbackFunction);	
	} 
	else {
		console.log("Thanks for playing! You are a....normal")
	}
}

var i = 0;

var options = { prompt: `Question #${i+1}: ${questionStrings[i]}`}

read(options, theCallbackFunction);