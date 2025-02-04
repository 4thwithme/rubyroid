require 'colorize'

require_relative './lib/utils/booble-sort'

arr = [1, 3, 5, 4, 2]
p booble_sort(arr)

puts 'Red goes faster!'.colorize(:red)
puts "I'm blue da ba dee da ba di!".colorize(:blue)
puts "It ain't easy bein' green...".colorize(:green)
