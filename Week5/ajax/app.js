console.log("We are go!");

$(document).ready(function () {
	$('.js-fetch-characters').on('click', fetchCharacters);
	$('.js-add-kylo-ren').on('click', addKylo);
	$('.js-add-new-character').on('click', addNewCharacter);

});

function addNewCharacter (theEvent) {
	 
	theEvent.preventDefault();
	 
	console.log("add new character");

	var newFormCharacter = {
	name: $('.js-name').val(),
	occupation: $('.js-occupation').val(),
	weapon: $('.js-weapon').val()
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newFormCharacter,
		success: updateList,
		error: handleError
	});
}

function fetchCharacters () {
	console.log('Fetch characters click');

	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	});
}

function addKylo () {
	var newCharacter = {
		name: "",
		occupation: "",
		weapon: "",
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: updateList,
		error: handleError
	});
}

function showCharacters (response) {
	var charactersArray = response;

	console.log(response);
	charactersArray.forEach(function (theCharacter) {
		var html = `
		<li>
			<h2> ${theCharacter.name} </h2>
			<p> ${theCharacter.occupation} </p>
			<p> ${theCharacter.weapon} </p>
		</li>
		`;
		$('.js-characters-list').append(html);
	});
}

function handleError (error) {
	console.log('Failure...');
	console.log(error.responseText);
}

function updateList () {
	console.log("add Kylo");
}