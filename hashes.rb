hash = {
  'name' => 'Eric',
  'age' => 26,
  'hungry?' => true,
  'canFly' => false,
  :goodAtCoding => true
}

hash['surname'] = 'Lau'
hash[:goodAtCoding] = false
hash.delete('hungry?')

puts hash
puts hash['name']
puts hash[:goodAtCoding]

puts hash.keys.join(', ')
puts hash.values.join(', ')
puts hash.length
puts hash.invert
puts hash.to_a.join(', ')
puts(hash.select { |key, _value| %w[name age].include?(key) || _value == false })
puts '------------'

hash2 = { aa: 1, bb: 2, cc: 3 }
puts hash2
puts hash2['name']
# puts hash2.fetch('name')
puts hash2.fetch('name', 'default value')
puts '------------'
hash2 = hash2.merge(hash)

hash2.each do |key, value|
  puts "#{key}: #{value}"
end

puts '------------'
