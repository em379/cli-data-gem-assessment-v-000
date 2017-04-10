class MoviesInTheaters::Movie
  attr_accessor :name 

  def initialize(name = nil)
    @name = name

  end

  def self.today
    self.scrape_movies
  end


  def self.scrape_movies
    movies = []

    movies << self.scrape_fandango

    movies

  end




def self.scrape_fandango
    doc = Nokogiri::HTML(open("http://www.fandango.com/brooklyn_+ny_movietimes"))
    movie = self.new
    movie.name = doc.search(".showtimes-movie-detail.follow-dark").text

    movie

  end
end
