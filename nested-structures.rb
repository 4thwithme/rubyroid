test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

puts test_scores[0][0]
puts test_scores[-1][-2]
puts test_scores.dig(1, 2)
puts test_scores.dig(5, 5)

teacher_mailboxes = [
  %w[Adams Baker Clark Davis],
  %w[Jones Lewis Lopez Moore],
  %w[Perez Scott Smith Young]
]
puts teacher_mailboxes[0][0]
puts teacher_mailboxes[-1][-4]
puts '-----------------'

mutable = Array.new(3, Array.new(2))
mutable[0][0] = 1000
puts mutable.join(', ')
puts '-----------------'

immutable = Array.new(3) { Array.new(2) }
immutable[0][0] = 1000
puts immutable.join(', ')

puts '-----------------'
puts test_scores.flatten.join(', ')
puts '-----------------'

vehicles = {
  alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
  blake: { year: 2020, make: 'Volkswagen', model: 'Beetle' },
  caleb: { year: 2020, make: 'Honda', model: 'Accord' }
}

puts vehicles[:alice][:model]
puts vehicles.dig(:blake, :year)
puts(vehicles.select { |_name, data| data[:year] >= 2020 })
puts(vehicles.map { |name, _data| name if _data[:year] >= 2020 })
puts '-----------------'
puts(vehicles.map { |name, _data| name if _data[:year] >= 2020 }.compact)
puts '-----------------'
puts(vehicles.filter_map { |name, _data| name if _data[:year] >= 2020 })
puts '-----------------'
puts(vehicles.each_with_object([]) do |(name, data), acc|
  acc << name if data[:year] >= 2020
end)
