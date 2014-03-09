cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

=begin
	
Extra Credit: Explain the following error,

ex4.rb:8:in `<main>': undefined local variable or method `car_pool_capacity' for main:Object (NameError)

The above error indicates that in line 8, there was an object "car_pool_capacity" that was called on, that didn't have an assigned value.

=end 
