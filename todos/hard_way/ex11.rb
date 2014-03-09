=begin 

A break down of gets.chomp
gets.chomp recieves input from the user.

get allows the user to input a string.
chomp removes the new line from the end of the input. 

=end 

#Round about way of gets.chomp

puts "Whats your favorite color?"
color = gets
color = color.chomp

puts "Really!  " + color.capitalize + " is my favorite too!"