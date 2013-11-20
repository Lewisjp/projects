require './activity'

def my_collect(array)
	i = 0
	new_array = Array.new
	while i < array.length
		yield array[i]

			if array[i] == "paper"
			new_array << true 
			else 
			new_array << false 
			end		

		i += 1
	end
	new_array
end

c_array = ["rock", "paper", "scissors"] 
puts my_collect(c_array) { |hand| hand == "paper" }

describe "#my_collect"  do
	it "should return an array that has boolean values."
	expect()
	
end



def my_select(array)
	i = 0
	new_array = Array.new
	while i < array.length 
		yield array[i]

			if array[i] == "monster"
				new_array << "monster"
			end


		i += 1
	end
	new_array
end

c_array = [ "monster", "monster", "red bull", "monster", "red bull"]
puts my_select(c_array) {|drink| drink == "monster" }

=begin
CHALLENGE:
Implement these methods as instance methods on the array class.
=end


