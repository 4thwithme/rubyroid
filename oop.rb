module Walkable
  def walk
    puts 'I am walking'
  end
end

class Animal
  attr_accessor :name, :height, :weight

  def initialize(name, height = 100, weight = 50)
    @name = name
    @height = height
    @weight = weight
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
  def bark
    puts 'Woof! Woof!'
  end
end

class Cat < Animal
  def meow
    puts 'Meow! Meow!'
  end
end

dog = Dog.new('Rover')
dog.bark
dog.walk
puts dog.name
dog.name = 'Rex'
puts dog.name
puts dog.height
puts dog.get_info
dog.change_info('Rex', 120, 70)
puts dog.get_info
puts '------------'

cat = Cat.new('Whiskers')
cat.meow
cat.walk
puts cat.name
puts '------------'

class Engine
  def start
    puts 'Engine is starting'
  end

  def stop
    puts 'Engine is stopping'
  end
end

class Car
  def initialize(model)
    @model = model
    @engine = Engine.new
  end

  def get_model_name
    puts @model
  end

  def start
    @engine.start
  end
end

puts 'OOP Composition: Car contains engine'
supra = Car.new('Supra')
supra.start
supra.get_model_name
puts '------------'

class Student
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end
end

class Univeristy
  def initialize(students_list)
    @students_list = students_list
  end

  def get_students_list
    @students_list.each { |student| puts student.get_name }
  end
end

puts 'OOP Aggregation: University contains students'
students = [Student.new('Alice'), Student.new('Bob')]
univerity = Univeristy.new(students)
univerity.get_students_list

puts '------------'

class MyCar
  attr_accessor :color, :speed
  attr_reader :year

  def initialize(color, model, year)
    @color = color
    @model = model
    @year = year
    @speed = 0
  end

  def speed_up(number)
    @speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def shut_off
    @speed = 0
    puts 'You shut off the car.'
  end

  def spray_paint(color)
    self.color = color
  end
end

puts 'OOP: MyCar class'
car = MyCar.new('red', 'Toyota', 2015)
car.speed_up(20)
puts car.speed
car.speed_up(20)
puts car.speed
car.brake(20)
puts car.speed
car.shut_off
puts car.speed
puts car.color
car.color = 'blue'
puts car.color
puts car.year
car.spray_paint('green')
puts car.color
