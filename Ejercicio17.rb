require_relative "movie.rb"

movies = movies().to_a

movies.each do |i|
	puts i[0]
end