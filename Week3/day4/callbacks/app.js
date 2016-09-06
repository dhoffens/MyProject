"use strict";

// var movieFileContents = File.read("movies.txt");

// var fs = require("fs");

// fs.readFile("movies.txt", "utf8", function (theError, movieFileContents) {
// 	if (theError === null) {
// 	var moviesArray = movieFileContents.split("\n");
// 	console.log(moviesArray);
// 	}
// 	else {
// 		console.log("Oh no! Error.")
// 		console.log( theError )
// 	}
// });

var read = require("read");
var theOptions = { prompt: "What do you want?"};
var birthday = { prompt: "When is your birthday?"};

function greetUser (theError, givenName) {
	console.log(`Hello,  ${givenName}! happy birthday ${birthday}`);
}

read(theOptions, greetUser);



// var moviesArray = movieFileContents.split("\n");
// 	console.log(moviesArray);

function after5Seconds () {
	console.log("Loading....");
}

setTimeout(after5Seconds, 1000);

setTimeout(after5Seconds, 1500);
setTimeout(after5Seconds, 2000);
setTimeout(after5Seconds, 2500);
setTimeout(after5Seconds, 3000);
setTimeout(after5Seconds, 3500);
setTimeout(after5Seconds, 4000);
setTimeout(after5Seconds, 4100);
setTimeout(after5Seconds, 4300);
setTimeout(after5Seconds, 4500);
setTimeout(after5Seconds, 4600);
setTimeout(after5Seconds, 4700);
setTimeout(after5Seconds, 4800);
setTimeout(after5Seconds, 4900);
setTimeout(after5Seconds, 5000);


function after10Seconds () {
	console.log("10 seconds");
}

setTimeout(after10Seconds, 10000);

function after1Second () {
	console.log("1 seconds");
}

setTimeout(after1Second, 1000);

console.log("");
console.log("END OF PROGRAM");
console.log("");