// Write your Pizza Builder JavaScript in this file.
$(document).on('ready', function () {

var price = 21;
var pepperonni = 1;
var mushroom = 1;
var greenPepper = 1;
var whiteSauce = 3;
var glutenFree = 5;

$('.btn-pepperonni').on('click', function () {
	$('.pep').toggle('pep');
	$('.btn-pepperonni').toggleClass('active');
	

	// price -= pepperonni;
	// $('strong').html(`${price}`)
})

$('.btn-mushrooms').on('click', function () {
	$('.mushroom').toggle('mushroom');
	$('.btn-mushrooms').toggleClass('active');
	price -= mushroom;
})

$('.btn-green-peppers').on('click', function () {
	$('.green-pepper').toggle('green-pepper');
	$('.btn-green-peppers').toggleClass('active');
	price -= greenPepper;
})

$('.btn-sauce').on('click', function () {
	$('.btn-sauce').toggleClass('active');
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

});

$('.btn-crust').on('click', function () {
	$('.btn-crust').toggleClass('active');
	if ( $('.crust').hasClass('crust-gluten-free') ) {
		$('.crust').removeClass('crust-gluten-free');
		price -= glutenFree;
	}
	else {
		$('.crust').addClass('crust-gluten-free');
	}
})


});


// if ( $('.btn-pepperonni').hasClass('active') ) {
//     $('.btn-pepperonni').removeClass('active')
//   }
//   else {
//     $('.btn-pepperonni').addClass('active')
//   }