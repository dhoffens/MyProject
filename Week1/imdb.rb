require("imdb")

movies = []
movies_array = IO.readlines("movies.txt")

	movies_array.each do |movie_title|
	the_search = Imdb::Search.new(movie_title)
	first_result = the_search.movies[0]
	movies.push(first_result)
	end

9.downto(1) do |rating|
	print "#{rating}"
	movies.each do |m|
		print "|"
		if m.rating.round >= rating
			print '#'
		else
			print '_'
		end
	end
	puts "|"
end

print " "
(1).upto(movies.length).each do |m|
	print "|#{m}"
end

puts "|"

index = 1
	movies.each do |m|
	puts "#{index}. #{m.title} (#{m.rating.round})"
	index += 1
end