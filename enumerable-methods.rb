friends = ['Sharon', 'Leo', 2, 'Leila', 'Brian', 'Arun']

puts(friends.select { |friend| friend != 'Brian' }.join(', '))
puts(friends.select { |friend| friend.to_s.include?('a') }.join(', '))

my_array = [1, 2, 3, 4, 5]

my_array.each do |num|
  print(num**num, ' ')
end
puts '-----------------'
hash = { one: 1, two: 2, three: 3 }

hash.each do |key, value|
  puts("The key is #{key} and the value is #{value}")
end
puts '-----------------'

my_array = [1, 2, 3, 4, 5]

my_array.each_with_index do |num, index|
  my_array[index] = num**num
end

puts(my_array.join(', '))

puts '-----------------'
new_arr = my_array.map { |num| num + 1 }
puts(new_arr.join(', '))
puts '-----------------'
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
new_order = my_order.map { |item| item.gsub('medium', 'extra large') }
puts(new_order.join(', '))
puts '-----------------'

my_numbers = [1, 2, 3, 4, 5, 6, 7, 8]
odd_numbers = my_numbers.select { |num| num.odd? }
puts(odd_numbers.join(', '))
puts '-----------------'

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

res = votes.each_with_object(Hash.new(0)) do |vote, result|
  result[vote] += 1
end

puts res
puts '-----------------'
friends = %w[Sharon Leo Leila Brian Arun]

puts(friends.map! { |friend| friend.upcase }.join(', '))
