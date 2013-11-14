=begin
	
create a ruby file called birthday.rb in todo3
ask the user for their birthday
print happy birthday if their birthday is today!
CHALLENGE: allow the user to enter their birthday in multiple formats
push to your github repo and post link to this thread
 

=end

require 'time'
require 'date'

puts "We at the DMV need to know your birthday.\nPlease enter the following data\nYear: "
user_year = gets.chomp.to_i
puts "Month: "
user_month = gets.chomp.to_i
puts "Day: "
user_day = gets.chomp.to_i

today = Time.now
Date.new(user_year, user_month, user_day)

if today.month == user_month
	if today.day == user_day
		"Happy Birthday!"
	end
else
	"Now I know your birthday."
end

