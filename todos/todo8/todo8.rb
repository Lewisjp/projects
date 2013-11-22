class Deli
	attr_accessor :line

	# Create a class called Deli that has one instance variable: line.
	def initialize
		@line = Array.new

	end
#In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
	def take_a_number(name)

		place = line.length
		line << "#{place + 1}. " + name
		
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
		line
	end


	def now_serving
#Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
		current_customer = line.shift 

	end 

	def get_name
		puts "Whats your name?"
		name = gets.chomp.to_s.downcase.capitalize
	end

end

our_line = Deli.new
our_line.take_a_number("Tony")
our_line.take_a_number("Ralph Cifaretto")
our_line.take_a_number("Silvio Dante")
puts our_line.now_serving



