class Car
  @@total_car_count = 0

  def initialize(color)
    @color = color
    @@total_car_count += 1
  end

  def self.total_car_count
    @@total_car_count
  end

  def self.set_total_car_count(count)
    @@total_car_count = count
  end
end

car1 = Car.new('red')
car2 = Car.new('blue')

Car.set_total_car_count(76)

puts Car.total_car_count

# inheritance

class Animal
  def initialize(name)
    @name = name
  end

  def speak(name, greeting)
    puts "#{name} says #{greeting}"
  end
end

class Dog < Animal
  def initialize(name)
    super
    @name = name
  end

  def speak
    super(@name, 'Woof')
  end
end

dog = Dog.new('Rover')
dog.speak

# instance methods and properties
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def walk
    puts 'I am walking'
  end
end

animal = Animal.new('Rover')
animal.walk
puts animal.name
animal.name = 'Rex'
puts animal.name

# private properties

class Cat
  def initialize
    @meow = 'Meow! Meow!'
  end

  def say_hello
    puts "Hello! I am a cat. I'm saying #{meow}!"
  end

  private

  attr_accessor :meow
end

cat = Cat.new
cat.say_hello
# cat.meow <--- this will throw an error

# protected properties

class Animal
  def initialize(type)
    @type = type
  end

  protected

  def greeting
    puts "I am a #{@type}. Hello"
  end
end

class Dog < Animal
  def initialize(type)
    super
    puts "I am a #{type}"
  end

  def say_hello
    greeting
  end
end

dog = Dog.new('dog')
dog.say_hello
# dog.greeting  <--- this will throw an error

# modules
module Walkable
  def walk
    puts 'I am walking'
  end
end

class Animal2
  include Walkable
end

class Fish
  include Walkable
end

animal = Animal2.new
animal.walk

fish = Fish.new
fish.walk
