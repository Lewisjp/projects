# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(hash)
	min = Hash.new
	min_value = 0
	hash.each_pair do | key, num |
		if 	min.empty?
			min[key] = num
			min_value = min[key]
		elsif num < min_value
			min.replace({key => num})
		end
	end
	min.values
end

test = {"Batman" => 1939, "Superman" => 1938, "Ironman" => 1963 }
puts key_for_min_value(test)

