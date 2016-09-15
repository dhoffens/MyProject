$(document).ready(function () {
	$('.js-search').on('click', artistSearch);
});


function artistSearch (search) {

	search.preventDefault();
	var newArtist = $('.js-artist').val();
	$('.js-artists').empty();

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${newArtist}`,
		success: wellDone,
		error: ohNo
	})
}

function wellDone (response) {

	var theResult = response.artists.items;
	console.log(theResult);
	theResult.forEach(function(theArtist) {

		if (theArtist.images.length > 0) {
			var html = `
				<li>
					${theArtist.name}
					<img class="what" data-id="${theArtist.id}" src=${theArtist.images[0].url}>
				</li>
				`;
		}

			$('.js-artists').append(html);
	})
				$('.what').on('click', albumSearch );

				function albumSearch (e) {
				var resultId = $(e.currentTarget).data("id");
				$('.js-albums').empty();

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

	$('.js-album-modal').modal('show');

	var albumResults = theAlbums.items;

	albumResults.forEach(function(theAlbum) {

		if (theAlbum.images.length > 0) {
			var albumsHtml = `
			<li>
				${theAlbum.name}
				<img src=${theAlbum.images[0].url}>
			</li>`

			$('.js-albums').append(albumsHtml);
		}
})
}

function noAlbums () {
	console.log('nothing here...');
}

