class MoviesInTheaters::Movie
  attr_accessor :name, :rating, :genre, :times




def self.scrape_movies_in_theaters
    doc = Nokogiri::HTML(open("http://www.fandango.com/brooklyn_+ny_movietimes"))
    name = doc.search("h3.dark showtimes-movie-title").text
    rating = doc.search(".showtimes-movie-rating-runtime").text
    genre = doc.search(".showtimes-movie-genre").text
    times = doc.search(".showtimes-times").text
  end
end
