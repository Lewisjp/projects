=begin
# instructions: implement Array.uniq
=end


class Array
 
  def uniq
  	saved_values = Array.new
  	self.each do | element |
  		if saved_values.include?(element)
  		else
  			saved_values << element
  		end
  	end
  	saved_values
  end
 
end

# test = [1,2,2,2,"a","a", "b", "b", "c"]
# test.uniq
# => 1,2, "a", "b", "c"