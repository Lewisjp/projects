def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeeses!"
	puts "You hvae #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket."
	puts # a blank line
end

puts "We can just give the function numbers directly:"
# call the cheese_and_crackers with cheese_count = 20 & boxes_of_crackers = 30
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
# call the cheese_and_crackers with 
# cheese_count = amount_of_cheese = 10 
# boxes_of_crackers = amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
# call the cheese_and_crackers with 
# cheese_count = 10 + 20 = 30
# boxes_of_crackers = 5 + 6 = 11 
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
# cheese_count = amount_of_cheese = 10 + 100 = 110
# boxes_of_crackers = amount_of_crackers = 50 + 1000 = 1050 
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
