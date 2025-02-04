# The only false values in Ruby are the values nil and false themselves.
# Everything else is considered true.
# The conditional logic in Ruby is similar to that in other languages.
# The if statement is used to execute code when a condition is true.
# The else statement is used to execute code when the condition is false.
# The elsif statement is used to check multiple conditions.

puts 'Hot diggity, 1 is less than 2!' if 1 < 2

if 2 < 1 || 3 < 4 or 4 < 5 or !(8 > 5)
  puts 'Hot diggity, 2 is less than 1!'
else
  puts 'Hot diggity, 2 is not less than 1!'
end

puts '--------'

attack_by_land = false
attack_by_sea = false

if attack_by_land
  puts 'release the goat'
elsif attack_by_sea
  puts 'release the shark'
else
  puts 'release Kevin the octopus'
end

puts '--------'
puts "5.eql?(5.0) is #{5.eql?(5.0)}"
puts "5.eql?(5) is #{5.eql?(5)}"
puts "5.equal?(5.0) is #{5.equal?(5.0)}"
puts '--------'

puts 5 <=> 10    #=> -1
puts 10 <=> 10   #=> 0
puts 10 <=> 5    #=> 1
puts '--------'

test = 3
res = case test
      when 1 then 'one'
      when 2 then 'two'
      else 'many'
      end

puts res

# Unless statements
# An unless statement works in the opposite way as an if statement: it only processes the code in the block if the expression evaluates to false. There isn’t much more to it.

age = 18
puts 'Get a job.' unless age < 17

# Ternary operator
# The ternary operator is a way to write an if else statement in one line. It’s a bit more compact, but it can be harder to read. It’s a good idea to use it sparingly.

age = 18
puts age < 17 ? 'Get a job.' : 'Get a job, hippie.'

puts '--------'

puts 0 == false

puts '0 is considered to be true.' if 0

if puts('aaa') || false
  puts 'true'
else
  puts 'false'
end
