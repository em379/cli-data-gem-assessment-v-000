
class MoviesInTheaters::CLI

  def call
    start
    list_movies

  end

  def list_movies
    puts "Movies Currently In Theaters
     @movies = MoviesInTheaters::Movie.today
     @movies.each.with_index(1) do |movie, i|
     print "#{i}. #{movie.name}"


    end
  end

    def start
      input = nil
      while input != "exit"
      puts "Enter your zip code to see details on the latest movies:"
      input = gets.chomp

      if input.is_a?(Fixnum)
        the_movie = @movies[input.to_i = (0..9)]
        puts "#{the_movie.name}"
      else input == "list"
        list_movies
      end
    end

  end
end
