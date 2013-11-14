=begin
Fizzbuzz folder should contain a single file "fizzbuzz.rb" that does the following:
 
prints numbers 1-100
when the number is divisible by 3, say fizz
when the number is divisible by 5 say buzz
when the number is divisible by 3 and 5 say fizzbuzz
 
e.g.
 
1
2
fizz
4
buzz
6  => should be fizz becuase its divisible by 3
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
=end 

1000.times do |num|
	if num % 5 == 0
		if num % 3 == 0
			puts "fizzbuzz"
		else
			puts "buzz"
		end
	elsif num % 3 == 0
		puts "fizz"
	else
		puts num
	end
end

