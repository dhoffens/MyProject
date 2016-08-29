class Game
	attr_accessor :movies
	def initialize
		@movies = []
	end

	def add_movies(movie_array)
		movie_array.each_with_index{|movie,index|
			@movies << movie
				if index >= 8
					break
				end
		}
	end

	def get_random_movie
		@movies.sample
	end
end