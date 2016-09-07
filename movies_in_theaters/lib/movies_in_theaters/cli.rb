require pry
class MoviesInTheaters::CLI

  def call
    list_movies
    menu
  end

  def list_movies
    puts "Movies Currently In Theaters"
     @movies = MoviesInTheaters::Movie.new
     binding.pry
     @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name}"
    end

  end

  def menu
    input = nil
    while input != "exit"
    puts"Enter the number of the movie you would like information about:"
    input = gets.strip
    if input == "list"
      list_movies
    elsif input.to_i == 0
      if movie = MoviesInTheaters::Movie.find_by_name(input)
        print_movie(movie)
      end
    elsif input.to_i > 0
      if movie = MoviesInTheaters::Movie.find(input.to_i)
        print_movie(movie)
      end
    end
  end
  puts "Goodbye!!!"
end
end
