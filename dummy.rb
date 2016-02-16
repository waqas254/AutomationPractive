require 'yaml'
puts "hello word"
puts YAML.load_file('urls.yml')['country']['lang']['en']
puts YAML.load_file('urls.yml')['people']['en']