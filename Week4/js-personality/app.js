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
}

var i = 0;

var options = { prompt: `Question #${i+1}: ${questionStrings[i]}`}

read(options, theCallbackFunction);



// function theCallbackFunction (theError, theAnswer) {
// 	console.log("Answer recorded");
// 	console.log(`Answer: ${theAnswer}`);

// 	options.prompt = "Do you find yourself initiating conversations?";
// 	read(options, callbackNumberTwo);

// 	function callbackNumberTwo (theErrorTwo, theAnswerTwo) {
// 		console.log("Answer recorded");
// 		console.log(`Answer: ${theAnswerTwo}`);		
	
// 		options.prompt = "Do you feel superior to others?";
// 		read(options, callbackNumberThree);

// 		function callbackNumberThree (theErrorThree, theAnswerThree) {
// 			console.log("Answer recorded");
// 			console.log(`Answer: ${theAnswerThree}`);	
		
// 			options.prompt = "Do you clean up after yourself?";
// 			read(options, callbackNumberFour);

// 			function callbackNumberFour (theErrorFour, theAnswerFour) {
// 			console.log("Answer recorded");
// 			console.log(`Answer: ${theAnswerFour}`);	
// 			}
// 		}
// 	}
// }

// read(options, theCallbackFunction);

// console.log("");
// console.log("Last line");