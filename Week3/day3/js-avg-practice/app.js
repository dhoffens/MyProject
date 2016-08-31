var numbers = '80:70:90:100';

function averageColon(the_numbers) {
	var arrayOfStringNumbers = the_numbers.split(":");
	
	console.log(arrayOfStringNumbers);

	var avg = arrayOfStringNumbers.reduce(function(a,b) {
		return parseInt(a) + parseInt(b);
		});
		console.log( avg/arrayOfStringNumbers.length );
		return (avg/arrayOfStringNumbers.length);
}; 

console.log( averageColon(numbers) === 85 );

var secondNumbers = '80&70&90&100';

function secondAverageColon(the_numbers) {
	var secondArrayOfStringNumbers = the_numbers.split("&");
	
	console.log(secondArrayOfStringNumbers);

	var secondAvg = secondArrayOfStringNumbers.reduce(function(a,b) {
		return parseInt(a) + parseInt(b);
		});
		console.log( secondAvg/secondArrayOfStringNumbers.length );
		return  secondAvg/secondArrayOfStringNumbers.length;
}; 

console.log( averageColon(numbers) === 85 );