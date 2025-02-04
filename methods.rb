def my_method
  puts 'Hello'
end

puts 'Before method call'
my_method
puts 'After method call'
puts '-----------'

def greet(name = 'stranger')
  'Hello, ' + name + '!'
end

puts greet('Jane') #=> Hello, Jane!
puts greet #=> Hello, stranger!

def check_is_odd?(number)
  return 'A number was not entered.' unless number.is_a? Numeric

  if number.even?
    "That is an even number. #{number}"
  else
    "That is an odd number. #{number}"
  end
end

num = '3453434'

puts check_is_odd?(num)
