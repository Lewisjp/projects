require "debugger"
=begin
Separate numbers with a comma each three digits.
 
separate_with_comma(1) #=> "1" 
separate_with_comma(1000) #=> "1,000" 
separate_with_comma(10000) #=> "10,000"

=end


def separate_with_comma(n)
	results = Array.new
	counter = 0
	n.to_s.size.times do |x|
		counter += 1
		if counter % 4 == 0
			results << ","			
		end
		results << n[x].to_s
	end
	return results.reverse.join
end
 
