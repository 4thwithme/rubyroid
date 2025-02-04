require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split('')
  unique_length = string_array.uniq.length

  p string_array.inspect
  p unique_length.inspect

  original_length == unique_length
end

puts isogram?('Odin')

puts 'Using puts:'
puts []
p 'Using p:'
p []

puts '--------'

def isogramm?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogramm?('Odin')
