def fib(end_num) # result final number
	current = 1 
	prev = 0
	new_num = 0 
	(end_num-2).times do |x|
		new_num = current + prev
		prev = current 
		current = new_num
	end
	return new_num 
end

puts fib(6)

#0, 1, 1, 2, 3, 5