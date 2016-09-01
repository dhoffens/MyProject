var fs = require('fs');

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    
    var sorted_episodes = episodes.sort(function(a,b) {
    	return a.episode_number - b.episode_number;
    });

    for (var n = 0; n < sorted_episodes.length; n++) {
   		
	    var rating = (Math.round(sorted_episodes[n].rating))
	    var stars = [];
	    
	    while (stars.length < rating) {
	    stars.push("*");
	}
		// function isGood() {
		// 	return rating >= 8.5;
		// }

	    var best_episodes = sorted_episodes.filter( function(the_episode ) {
	    	return the_episode.rating >= 8.5;
	    });

	    console.log("Title: " + best_episodes[n].title + " Episode #: " + best_episodes[n].episode_number);
	    console.log(best_episodes[n].description);
	    console.log("Rating: " + best_episodes[n].rating);
	    console.log(stars.join(''));
	    console.log("");
      }
};