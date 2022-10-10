require 'yaml'
thing = YAML.load_file('collection.yml')
puts thing.inspect
