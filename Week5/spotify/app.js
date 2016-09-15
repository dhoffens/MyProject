$(document).ready(function () {
	$('.js-search').on('click', artistSearch);
});


function artistSearch (search) {

	search.preventDefault();
	console.log('trying to search!');

	var newArtist = $('.js-artist').val();

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${newArtist}`,
		success: wellDone,
		error: ohNo
	})
}

function wellDone (response) {
	console.log('search success');

	var theResult = response.artists.items[0];
	console.log(theResult);
	
	var resultId = theResult.id;
	console.log(resultId);

	var html = `
		<li>${theResult.name}</li>
		<li><img src=${theResult.images[0].url}></li>
		`;

		$('.js-artists').append(html);

			$('.js-artists').on('click', albumSearch);
	
			function albumSearch (album) {
			album.preventDefault();
			console.log('lets look for albums');

			$.ajax({
				type: "GET",
				url: `https://api.spotify.com/v1/artists/${resultId}/albums`,
				success: showAlbums,
				error: noAlbums
			})
			}
	}

function ohNo () {
	console.log('you done fucked up');
};

function showAlbums (theAlbums) {
	console.log(theAlbums)
	console.log('attempting to show albums');

	var albumsShow = theAlbums.items[0];

	console.log(albumsShow);

	var albumsHtml = `
	<li>${albumsShow.name}</li>
	<li><img src=${albumsShow.images[0].url}></li>`

	$('.js-albums').append(albumsHtml);

}

function noAlbums () {
	console.log('nothing here...');
}

