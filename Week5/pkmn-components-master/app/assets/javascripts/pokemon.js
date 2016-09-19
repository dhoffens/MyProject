// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.PokemonComponent = class {
	constructor (pokemonUri) {
		this.id = PokemonApp.idFromUri( pokemonUri );
	}

	render () {
		console.log(`PokemonComponent rendering pokemon #${this.id}`);
	
		$.ajax({
			type: "GET",
			url: `/api/v1/pokemon/${this.id}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		});
	}
};

PokemonApp.showPokemonModal = function (result) {

	console.log(result);

	//adding pokemon info

	$('.js-poke-name').html(result.name);
	$('.js-poke-number').html(result.pkdx_id);
	$('.js-poke-height').html(result.height);	
	$('.js-poke-weight').html(result.weight);
	$('.js-poke-hp').html(result.hp);
	$('.js-poke-attack').html(result.attack);
	$('.js-poke-defense').html(result.defense);
	$('.js-poke-spatk').html(result.sp_atk);
	$('.js-poke-spdef').html(result.sp_def);
	$('.js-poke-speed').html(result.speed);
	$('.js-poke-types').html(result.types[0].name);

	// if second type, show it

	if (result.types[1] !== undefined) {
		$('.js-poke-types2').html(result.types[1].name)
	}
	
	// show modal

	$('.js-pokemon-modal').modal('show');

		//evolutions

		$('.js-evolutions').on('click', showEvolutions)

		function showEvolutions () {
			console.log("evolve")

			
		}

};

PokemonApp.handleError = function (theError) {
	console.log('Pokemon Component Error');
	console.log(theError.responseText);
}


PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

$(document).ready(function () {

	$('.js-show-pokemon').on('click', function (showIt) {

		var theUri = $(showIt.currentTarget).data('pokemon-uri');
		console.log(theUri);
		var pokeComponent = new PokemonApp.PokemonComponent(theUri);
		pokeComponent.render();
	});
});