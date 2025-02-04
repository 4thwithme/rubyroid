module Walkable
  def walk
    puts 'I am walking'
  end
end

class Animal
  attr_accessor :name, :height, :weight, :years

  def self.what_am_i
    'I am an animal'
  end

  def initialize(name, height = 100, weight = 50, years = 3)
    @name = name
    @height = height
    @weight = weight
    @years = years
  end

  def change_info(n, h, w)
    @name = n
    @height = h
    self.weight = w
  end

  def get_info
    "#{@name} weighs #{@weight} and is #{@height} tall"
  end

  include Walkable
end

class Dog < Animal
  DOG_YEARS = 7
  @@number_of_dogs = 0

  def initialize(name, height = 100, weight = 50, years = 3)
    super(name, height, weight, years * DOG_YEARS)
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def self.what_am_i
    super
  end

  def bark
    puts 'Woof! Woof!'
  end

  def to_s
    "This dog's name is #{name} and it is #{years} in dog years."
  end
end

dog = Dog.new('Rover')
puts Dog.total_number_of_dogs # call what_am_i method from Animal class
puts dog.height
puts Dog.what_am_i
Dog.new('Amy')
puts Dog.total_number_of_dogs
puts dog.years
puts dog
