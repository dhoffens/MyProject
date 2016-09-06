options = {
	prompt: "What is your name?\n"
}

read(options, displayName)

function displayName (err, name) {
	console.log("Your name is: " + name)
}

var points = 0;

function addPoints () {
	if (question === correct) {
		points += 1;
	}
}