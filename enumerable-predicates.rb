numbers = [1, 2, 3, 4, 5, 6, 7, 8]
puts(numbers.all? { |number| number.is_a?(Integer) })
puts '----------------'
puts(numbers.any? { |number| number.is_a?(String) })
puts '----------------'
puts(numbers.none? { |number| number.is_a?(String) })
puts '----------------'
puts(numbers.one? { |number| number.is_a?(String) })
