"use strict";

var read = require('read');
var Question = require('./lib/question.js');
var Quiz = require('./lib/quiz.js');

var question1 = new Question(1, "What is Miami's basketball team?", "Heat");
var question2 = new Question(2, "What is Philly's football team?", "Eagles");
var theQuiz = new Quiz();

theQuiz.addQuestion(question1);
theQuiz.addQuestion(question2);

function handleInput (theError, input) {
  theQuiz.answer(input);

	if (theQuiz.isGameOver()) {
	console.log("GAME OVER");
	}
	else {
	options.prompt = theQuiz.getCurrentQuestion();
	read(options, handleInput);
	}
}

var options = { prompt: theQuiz.getCurrentQuestion() };

read(options, handleInput);
