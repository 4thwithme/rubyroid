# All types are objects in Ruby

puts "1+1=#{ 1+1 }"
puts "2+2=#{ 2+2 }"
puts "14/3=#{ 14/3 }"
puts "14%3=#{ 14%3 }"
puts "14.0/3=#{ 14.0/3 }"
puts "14/3.0=#{ 14/3.0 }"

puts "13.to_f=#{ 13.to_f }"

puts "13.0.to_i=#{ 13.0.to_i }"
puts "13.9.to_i=#{ 13.0.to_i }"

puts "6.even?=#{ 6.even? }"
puts "6.odd?=#{ 6.odd? }"

puts "7.even?=#{ 7.even? }"
puts "7.odd?=#{ 7.odd? }"


# Concatenation
puts "Welcome " + "to " + "Odin!"
puts "Welcome " << "to " << "Odin!"
puts"Welcome ".concat("to ").concat("Odin!") 

# Stringception
puts "Hello".length()
puts "Hello".reverse()
puts "Hello".upcase()
puts "Hello".downcase()
puts "Hello".swapcase()
puts "Hello".capitalize()
puts "Hello".reverse().upcase()
puts " hello, world   ".strip()
puts "hello".empty?()  #=> false
puts "".empty?()
puts "------------"
puts "hello".include?("lo")  #=> true
puts "------------"
puts "hello".include?("z")   #=> false
puts "------------"
puts "Hello"[0]
puts "Hello"[1]
puts "Hello"[0,2] # 0 to 2
puts "Hello"[0..2] # 0 to 2
puts "Hello[0...2]" "Hello"[0...2] # 0 to 2 but not including 2
puts "------------"
puts "Hello".split("")
puts "------------"
puts "Helllllooolololololo".split("l")
puts "------------"
puts "Hello".split("l").join("^^")
puts "------------"
puts "Hello"[-1]
puts "------------"
puts "Hello"[-2]
puts "------------"
puts "he77o".sub("7", "l")
puts "he77o".gsub("7", "l")
puts "hello".insert(-1, " dude")
puts "hello world".delete("l")
puts "!".prepend("hello, ", "world")
puts "------------"

# String Interpolation
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"

name = "Odin2"

puts "Hello, #{name}" #=> "Hello, Odin2"
puts 'Hello, #{name}' #=> "Hello, #{name}"

# Converting
puts "------------"
puts "Convert to string: #{ 1.to_s }"
puts "Convert to integer: #{ "1".to_i }"
puts "Convert to float: #{ "1".to_f }"
puts "Convert to symbol: #{ "1".to_sym }"
puts "Convert nil.to_s: #{ nil.to_s }"
puts "Convert true.to_s: #{ true.to_s }"
puts "Convert false.to_s: #{ false.to_s }"
puts "Convert :symbol.to_s: #{ :symbol.to_s }"
puts "------------"

# Symbols
puts "------------"
puts "string" == "string"
puts "string".object_id == "string".object_id
puts :symbol.object_id == :symbol.object_id
puts "------------"

# Booleans
# Everything is truthy in Ruby except for false and nil
# false and nil are the only falsy values in Ruby
puts "------------"
puts "true && true: #{ true && true }"
puts "true && false: #{ true && false }"
puts "false && true: #{ false && true }"
puts "false && false: #{ false && false }"
puts "------------"

puts "true || true: #{ true || true }"
puts "true || false: #{ true || false }"
puts "false || true: #{ false || true }"
puts "false || false: #{ false || false }"
puts "------------"

puts "!true: #{ !true }"
puts "!false: #{ !false }"
puts "!nil: #{ !nil }"
puts "false === nil: #{ false === nil }"
puts "1 === 1.to_i: #{ 1.0 === 1.0.to_i }"
puts "1 == 1.to_i: #{ 1.0 == 1.0.to_i }"
puts "1 == 1.to_i: #{ "1" == 1 }"
puts "1 === 1.to_i: #{ "1" === 1 }"