require 'yaml'
require 'json'
txt = File.open(File.expand_path('./testfile.txt', __dir__), 'w+')

txt.write('Hello World4')

puts txt.read
puts File.read(File.expand_path('./testfile.txt', __dir__))
txt.close

yaml = File.read(File.expand_path('./test.yaml', __dir__))
puts 'yaml', YAML.load(yaml)

def to_yaml
  YAML.dump({ name: 'John', age: 30, array: [1, 2, { 'qwe' => 1, 'asd' => 2 }] })
end

new_yaml = File.open(File.expand_path('./new_test.yaml', __dir__), 'w+')
new_yaml.write(to_yaml)
new_yaml.close

new_json = File.open(File.expand_path('./new_test.json', __dir__), 'w+')
new_json.write(JSON.dump({ name: 'John', age: 30, array: [1, 2, { 'qwe' => 1, 'asd' => 2 }] }))
new_json.close

puts JSON.parse(File.read(File.expand_path('./new_test.json', __dir__)))
