counter = 0
loop do
  counter += 1
  puts "Counter: #{counter}"
  break if counter > 5
end

puts '---------'

i = 0
while i < 5
  puts "Counter: #{i}"
  i += 1
end

puts '---------'

# puts 'Type exit to exit' while gets.chomp != 'exit'

puts '---------'

i = 0
until i > 5
  puts "Counter: #{i}"
  i += 1
end

puts '---------'

# puts 'Do you like Pizza?' until gets.chomp == 'yes'

puts '---------'

for i in 0..5
  puts "Counter: #{i}"
end

puts '---------'

for i in 0...5
  puts "Counter: #{i}"
end

puts '---------'

for i in ('a'..'f')
  puts "Letter: #{i}"
end

puts '---------'

5.times do |i|
  puts "Counter: #{i}"
end
