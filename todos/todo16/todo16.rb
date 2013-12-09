

=begin
Instructions:
Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.
 
test = ['cat', 'dog', 'fish', 'fish']
 
def count(array)
  ___
end
 
count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

Also write a test.
=end

def count(arr)

	#set up variables
	hold_Kcount = Array.new
	hold_KnV = Hash.new

	#set keys for hash
	keys = arr.uniq
	keys.each do |x|
	 hold_KnV[x] = 0
	end 


	#track items
	arr.each do |x|
		if hold_KnV.include?(x)
			hold_KnV[x] += 1
		else
			puts "Error: element was missed"
		end
	end

	#display summary
	puts hold_KnV.inspect
end



test = ['cat', 'dog', 'fish', 'fish']
count(test)