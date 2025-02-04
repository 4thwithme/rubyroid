array_1 = [1, 2, 3, 4, 5]
array_2 = Array.new(5, 's')
array_1.reduce do |a,b|
  puts(a,b)
end

puts array_1.join(' ')
puts array_2.join(' ')

puts array_1[0]
puts array_1[1]
puts array_1[-2]
puts array_1.last
puts array_1.last(2)
puts array_1.first
puts array_1.first(2)
puts '--------'
puts array_1.length
puts array_1.size
puts array_1.count
puts array_1.empty?
puts '--------'
puts array_1.include?(3)
puts array_1.include?(6)
puts array_1.reverse.join(' ')
puts '--------'
array_3 = array_1 + array_2
puts array_3.join(' ')
puts '--------'
array_4 = array_1 - [1, 2]
puts array_4.join(' ')
puts '--------'

array_5 = [1, 2, 3, 4, 5]
array_5.push(6)
array_5 << 7
array_5.unshift(0)
array_5.insert(3, 2.5)
puts array_5.join(' ')
puts '--------'
puts array_5.fetch(100, 'Not found')
puts array_5.drop(3).join(' ')
puts array_5.take(3).join(' ')
puts array_5.join(' ')
puts '--------'

# puts array_5.methods
puts '--------'

puts Set[1, 2].to_a

puts '--------'

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
puts arr.uniq #=> [2, 5, 6, 556, 8, 9, 0, 123]

arr1 = [1, 2, 3, 4, 5]
arr2 = arr1

arr2[0] = 0
puts arr1.join(' ') #=> 0 2 3 4 5
puts arr2.join(' ') #=> 0 2 3 4 5

arr3 = arr1.dup
arr3[0] = 1
puts arr3.join(' ') #=> 1 2 3 4 5
puts arr1.join(' ') #=> 0 2 3 4 5
