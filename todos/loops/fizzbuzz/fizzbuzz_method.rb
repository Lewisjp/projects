=begin
Fizzbuzz folder should contain a single file "fizzbuzz.rb" that does the following:
 
prints numbers 1-100
when the number is divisible by 3, say fizz
when the number is divisible by 5 say buzz
when the number is divisible by 3 and 5 say fizzbuzz

=end 


def fizzbuzz(total)
	total.times do |num|
		if num % 15 == 0 
			puts "fizzbuzz"
		elsif num % 5 == 0
			puts "buzz"
		elsif num % 3 == 0
			puts "fizz"
		else
			puts num
		end
	end
end

puts "Enter number to be fizzbuzzed"
answer = gets.chomp.to_i
fizzbuzz(answer)