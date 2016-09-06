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
	
		options.prompt = "Do you feel superior to others?";
		read(options, callbackNumberThree);

		function callbackNumberThree (theErrorThree, theAnswerThree) {
			console.log("Answer recorded");
			console.log(`Answer: ${theAnswerThree}`);	
		
			options.prompt = "Do you clean up after yourself?";
			read(options, callbackNumberFour);

			function callbackNumberFour (theErrorFour, theAnswerFour) {
			console.log("Answer recorded");
			console.log(`Answer: ${theAnswerFour}`);	
			}
		}
	}
}

read(options, theCallbackFunction);

console.log("");
console.log("Last line");