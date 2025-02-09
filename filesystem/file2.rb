printf "There\n\n\n are %d apples\n", 3
# inp = $stdin.read
#
# puts inp

puts File.exist?(File.expand_path('./testfile.txt', __dir__))

if File.exist?(File.expand_path('./testfile.txt', __dir__))
  File.rename(File.expand_path('./testfile.txt', __dir__), File.expand_path('./testfile2.txt', __dir__))
  puts 'File exists'
else
  puts 'File does not exist'
end
#
File.readlines(File.expand_path('./testfile2.txt', __dir__)).each do |line|
  puts line
end

puts Dir.pwd
puts Dir.exist?('qwe')
Dir.mkdir('qwe') unless Dir.exist?('qwe')
puts Dir.exist?('qwe')
puts Dir.entries(Dir.pwd)
