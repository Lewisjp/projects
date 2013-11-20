#Implement your own versions of collect and select
=begin

def my_collect(array)
	i = 0
	new_array = Array.new
	while i < array.length

            t_or_f = yield array[i]
            new_array << t_or_f
            
		i += 1
	end
	new_array
end

#c_array = ["rock", "paper", "scissors"] 
#puts my_collect(c_array) { |hand| hand == "paper" }



def my_select(array)
	i = 0
	new_array = Array.new
	while i < array.length 

        new_array << array[i] if (yield array[i]) == true

		i += 1
	end
	new_array
end
=end

#c_array = [ "monster", "monster", "red bull", "monster", "red bull"]
#puts my_select(c_array) {|drink| drink == "monster" }

=begin
CHALLENGE:
Implement these methods as instance methods on the array class.
=end

class Array


	def my_collect
		i = 0
		new_array = Array.new
		while i < self.length

	            t_or_f = yield self[i]
	            new_array << t_or_f
	            
			i += 1
		end
		new_array
	end


	def my_select
		i = 0
		new_array = Array.new
		while i < self.length 

	        new_array << self[i] if (yield self[i]) == true

			i += 1
		end
		new_array
	end
end

=begin

	c_array = ["rock", "paper", "scissors"] 
	puts c_array.my_collect { |hand| hand == "paper" }

	puts c_array.my_select { |hand| hand == "paper" }

=end