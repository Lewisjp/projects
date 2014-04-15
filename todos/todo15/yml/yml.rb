require 'yaml'

# How to create the file 

# @preferences = {
# 	"word-wrapping" => true,
# 	"font-size" => 20,
# 	"font" => "Arial"
# }

# output = File.new('prefs.yml', 'w')
# output.puts YAML.dump(@preferences)
# output.close 

# # How to read in the file

# output = File.new('prefs.yml','r')
# @preferences = YAML.load(output.read)
# output.close

# puts @preferences.inspect

# You can also save objects 

# class Person
# 	def initialize name
# 		@name = name
# 	end
# end

# tom = Person.new("Tom")

# output = File.new('person.yml', 'w')
# output.puts YAML.dump(tom)
# output.close 




=begin
require 'yaml' # allows you to work with yml files

puts "test".to_yaml # write to a temp file

	
class Square
  def initialize width, height
    @width = width
    @height = height
    @bonus = ['yo', {:msg => 'YAML 4TW'}]
    @me = self
  end
end

puts Square.new(2, 2).to_yaml # write method results to a temp file

# When you create a YAML object, you don't need to initialize it.  

serialized = Square.new(4, 4).to_yaml
new_obj = YAML::load(serialized)
puts new_obj.width

# Once you have a YAML string you can save it, store it, email it, delete it.

=end
