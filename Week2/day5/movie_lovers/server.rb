require "sinatra"
require "imdb"

require_relative("lib/game.rb")

game = Game.new

get "/" do
	erb :home
end

post "/submit_post" do

	search = Imdb::Search.new(params[:search])
	@movies = search.movies
	game.add_movies(@movies)
    @random_movie = game.get_random_movie
  	@random_date = @random_movie.title.match(/\(\d+\)/)[0]
    #movie question
    @question = "Pick the movie that was made in #{@random_date}"
	erb :results
end



