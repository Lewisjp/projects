=begin
	
create a ruby file called birthday.rb in todo3
ask the user for their birthday
print happy birthday if their birthday is today!
CHALLENGE: allow the user to enter their birthday in multiple formats
push to your github repo and post link to this thread
 

=end

require 'time'
require 'date'

puts "We at the DMV need to know your birthday.\nPlease enter the following data\nYear (yyyy): "
user_year = gets.chomp.to_i
puts "Month (mm): "
user_month = gets.chomp.to_i
puts "Day (dd): "
user_day = gets.chomp.to_i

today_date = Time.now
comp_month = today_date.month
comp_day = today_date.day

user_birthday = Date.new(user_year, user_month, user_day)

if comp_month == user_birthday.month
	if comp_day == user_birthday.day
		puts "Happy Birthday!"
	end
else
		puts "Now I know your birthday."
end

