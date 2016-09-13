// Write your Pizza Builder JavaScript in this file.
$(document).on('ready', function () {

var price = 21;
var pepperonni = 1;
var mushroom = 1;
var greenPepper = 1;
var whiteSauce = 3;
var glutenFree = 5;

$('.btn-pepperonni').on('click', function () {
	if ( $('.btn-pepperonni').hasClass('active') ) {
		price -= pepperonni;
		$('strong').html(`$${price}`);
	}
	else {
		price += pepperonni;
		$('strong').html(`$${price}`);
	}
	$('.btn-pepperonni').toggleClass('active');
	$('.pep').toggle();
	$('.pep-line').toggle();
})

$('.btn-mushrooms').on('click', function () {
	if ( $('.btn-mushrooms').hasClass('active') ) {
		price -= mushroom;
		$('strong').html(`$${price}`);
	}
	else {
		price += mushroom;
		$('strong').html(`$${price}`);
	}
	$('.btn-mushrooms').toggleClass('active');
	$('.mushroom').toggle();
	$('.mush-line').toggle();
})

$('.btn-green-peppers').on('click', function () {
	
	if ( $('.btn-green-peppers').hasClass('active') ) {
		price -= greenPepper;
		$('strong').html(`$${price}`);
	}
	else {
		price += greenPepper;
		$('strong').html(`$${price}`);
	}
	$('.btn-green-peppers').toggleClass('active');
	$('.green-pepper').toggle();
	$('.pepper-line').toggle();
})

$('.btn-sauce').on('click', function () {
	
	if ( $('.sauce').hasClass('sauce-white') ) {
		$('.sauce').removeClass('sauce-white');
		$('.sauce').addClass('sauce-red');
		price -= whiteSauce;
		$('strong').html(`$${price}`)
	}
	else {
		$('.sauce').removeClass('sauce-red');
		$('.sauce').addClass('sauce-white');
		price += whiteSauce;
		$('strong').html(`$${price}`)
	}
	$('.btn-sauce').toggleClass('active');
	$('.sauce-line').toggle();
});

$('.btn-crust').on('click', function () {
	
	if ( $('.crust').hasClass('crust-gluten-free') ) {
		$('.crust').removeClass('crust-gluten-free');
		price -= glutenFree;
		$('strong').html(`$${price}`)
	}
	else {
		$('.crust').addClass('crust-gluten-free');
		price += glutenFree;
		$('strong').html(`$${price}`)
	}
	$('.btn-crust').toggleClass('active');
	$('.gluten-line').toggle();
})


});