"use strict";

var read = require('read');

var options = {
	prompt: "Do you find it difficult to introduce yourself to others?"
};

function theCallbackFunction (theError, theAnswer) {
	console.log("Answer recorded");
	console.log(`Answer: ${theAnswer}`);

	options.prompt = "Do you find yourself initiating conversations?";
	read(options, callbackNumberTwo);

	function callbackNumberTwo (theErrorTwo, theAnswerTwo) {
		console.log("Answer recorded");
		console.log(`Answer: ${theAnswerTwo}`);		
	}
}

read(options, theCallbackFunction);

console.log("");
console.log("Last line");