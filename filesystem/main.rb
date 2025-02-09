$stdout.puts 'Hello World'

io = IO.new(1)
io.puts 'Hello World'

# fd = IO.sysopen('/dev/null', 'w+')
# dev_null = IO.new(fd)
# dev_null.puts 'Hello World'
# dev_null.gets
# dev_null.close

# get Gemfile content from ../Gemfile using IO.sysopen and abs path
fd = IO.sysopen(File.expand_path('../Gemfile', __dir__), 'r')
gemfile = IO.new(fd)

puts gemfile.read

text_fd = IO.sysopen(File.expand_path('../testfile.txt', __dir__), 'w+')
text_file = IO.new(text_fd)

text_file.puts 'Hello World1'
text_file.puts 'Hello World2'
text_file.puts 'Hello World3'

# end of writing
text_file.close

text_fd = IO.sysopen(File.expand_path('../testfile.txt', __dir__), 'r')
text_file = IO.new(text_fd)

puts text_file.read
