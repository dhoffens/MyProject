"use strict";

var fs = require("fs");

fs.readFile("movies.txt", "utf8", function (theError, movieFileContents) {
	if (theError === null) {
	var moviesArray = movieFileContents.split("\n");
	console.log(moviesArray);
	}
	else {
		console.log("Oh no! Error.")
		console.log( theError )
	}
});

var read = require("read");

read

// var movieFileContents = File.read("movies.txt");

// var moviesArray = movieFileContents.split("\n");
// console.log(moviesArray);

// function after5Seconds () {
// 	console.log("5 seconds");
// }

// setTimeout(after5Seconds, 5000);

// function after10Seconds () {
// 	console.log("10 seconds");
// }

// setTimeout(after10Seconds, 10000);

// function after1Second () {
// 	console.log("1 seconds");
// }

// setTimeout(after1Second, 1000);

// console.log("");
// console.log("END OF PROGRAM");
// console.log("");