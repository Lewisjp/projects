# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1
def fibo_finder(n)
  # code goes here
  sequence = Array.new

  n.times do |turn|
  	if sequence.empty? 
  		sequence << 0
	elsif sequence.length < 2
		sequence << 1
	else 
		current = sequence[turn-1] + sequence[turn-2]
		sequence << current
  	end
  	sequence
  end

end
