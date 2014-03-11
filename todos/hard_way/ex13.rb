first, second, third = ARGV

puts "The script is called : #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

=begin
	
ARGV is the "argument variable," a constant.

$ ruby ex13.rb first 2nd 3rd
The script is called: ex13.rb
Your first variable is: first
Your second variable is: 2nd
Your third variable is: 3rd

$ ruby ex13.rb Spoke Nemo Bella
The script is called : ex13.rb
Your first variable is: Spoke
Your second variable is: Nemo
Your third variable is: Bella

In the example above the ARGV takes 3 variables.  
If you place in less than 3, the over flow will just be empty.

$ ruby ex13.rb joe polina
The script is called : ex13.rb
Your first variable is: joe
Your second variable is: polina
Your third variable is: 

If you try to unpack more variables than the ARGV (argument varaible) can hold, 
excess will just be ignored.

$ ruby ex13.rb sara oliver katie amine
The script is called : ex13.rb
Your first variable is: sara
Your second variable is: oliver
Your third variable is: katie

=end