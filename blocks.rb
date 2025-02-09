def logger
  yield
end

logger { puts "hello from the block" }
#=> hello from the block

logger do
  p [1, 2, 3]
end

def double_vision
  yield
  yield
end

double_vision { puts "How many fingers am I holding up?" }

def love_language
  yield("Ruby")
  yield("Rails")
end

love_language { |lang| puts "I love #{lang}" }

@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement(&block)
  @transactions.each(&block)
end

transaction_statement do |transaction|
  p "%0.2f" % transaction # The bank that calls the method can define how it is handled.
end
puts "----------------------"

def mad_libs
  yield("cool", "beans", "burrito") # 3 arguments are passed to yield
end

mad_libs do |adjective, noun| # But the block only takes 2 parameters
  puts "I said #{adjective} #{noun}!"
end

puts "----------------------"

def awesome_method(&block)
  hash = { a: "apple", b: "banana", c: "cookie" }

  hash.each(&block)
end

awesome_method { |key, value| puts "#{key}: #{value}" }

puts "----------------------"

def maybe_block
  puts "block party" if block_given?
  puts "executed regardless"
end

maybe_block
# => executed regardless

maybe_block {} # {} is just an empty block
# => block party
# => executed regardless

puts "----------------------"

lambda1 = -> { puts "I'm a lambda" }
lambda1.call

lambda2 = ->(name) { puts "Hello, #{name}" }
lambda2.call("Ruby")

puts "----------------------"

a_proc = proc { |a, b| puts "a: #{a} --- b: #{b}" }

a_proc.call("apple", "banana")

puts "----------------------"

my_proc = proc { |name = "bob"| puts name }

my_proc.call
# => bob

my_lambda = ->(name = "r2d2") { puts name }

my_lambda.call
# => r2d2
