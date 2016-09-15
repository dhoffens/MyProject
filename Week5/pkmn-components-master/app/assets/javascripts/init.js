if (window.PokemonApp === undefined) {
	window.PokemonApp = {};
}

PokemonApp.init = function () {
	console.log("Gotta catch em all!!");
};

$(document).on('ready', function () {
	PokemonApp.init();
});