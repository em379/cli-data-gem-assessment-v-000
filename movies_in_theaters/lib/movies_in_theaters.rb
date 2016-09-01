require "movies_in_theaters/version"
require 'nokogiri'
require 'open-uri'


module MoviesInTheaters
  # Your code goes here...
  def get_page
    doc = Nokogiri::HTML(open("http://www.fandango.com/"))

end
