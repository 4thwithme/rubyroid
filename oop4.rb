class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  # private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new('Sparky', 4)
sparky.human_years

class Cinema
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

class Movie
  attr_accessor :title, :showtime, :cinema

  def initialize(title, showtime)
    @title = title
    @showtime = showtime
  end
end

cinema = Cinema.new('Cinema City', 'Bucharest')
cinema2 = Cinema.new('Cinema City', 'Cluj')

movie = Movie.new('The Godfather', '19:00')
movie2 = Movie.new('The Godfather', '21:00')
movie3 = Movie.new('Star Wars', '23:00')

cinema.add_movie(movie)
cinema.add_movie(movie2)
cinema2.add_movie(movie3)

p cinema
p cinema2
