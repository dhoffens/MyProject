// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {
	$('.ing-btn').on('click', addIngredient);
});

function addIngredient (theIngredient) {

	theIngredient.preventDefault();
	$('.js-ingredients').empty();
	//console.log(theIngredient)
	
	var newIngredient = $(theIngredient.currentTarget).data("id");
	console.log(theIngredient.currentTarget)

	var currentSandwich = $(".js-sandwich-details").data("sand-id");

	$.ajax({
		type: "POST",
		url: `http://localhost:3000/api/sandwiches/${currentSandwich}/ingredients/add`,
		data: {ingredient_id: newIngredient},
		success: updateIngredient,
		error: handleError

	})
}

function updateIngredient (theUpdate) {
	console.log(theUpdate);
	
	var ingredientsArray = theUpdate.ingredients;


	$('.calories').html(theUpdate.total_calories)

	ingredientsArray.forEach(function (theIngredient){
		var html = `
			${theIngredient.name}
			${theIngredient.calories} <br>
		`;	
	$('.js-ingredients').append(html)
	})

	
}

function handleError (theError) {
	console.log("error.")
}