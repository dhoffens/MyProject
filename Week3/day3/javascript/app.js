var countColors = require("./lib/count-colors.js");

var colorArray = ["indigo", "teal", "lilac", "teal", "periwinkle", "black", "periwinkle", "baby blue", "teal"];

console.log(countColors("indigo", colorArray) === 1 );
console.log(countColors("teal", colorArray) === 3 );
console.log(countColors("periwinkle", colorArray) === 2 );
console.log(countColors("green", colorArray) === 0 );
console.log(countColors("navy", colorArray) === 0 );
