#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.


def ball_message

messages = ["yes", "no", "maybe", "Price and value are not the same.", "Don't swing at everything."]
puts messages[rand(5)]

puts "\nWant to try again?"
answer = gets.chomp.downcase
if answer == "yes" || answer == "y"
	ball_message
end

end



puts "Every Financial Advisor has an eight ball on the desk.  Want to try asking it a question, Yes or No?"
answer = gets.chomp.downcase
if answer == "yes" || answer == "y"
	ball_message
end