# this one is similar to previous exercises with ARGV
def puts_two(*args) 
#the *args takes in as many arguments as you'd like, think of an array.
	arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# *args is actually pointless, we can do the following explicitly
def puts_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this one takes one argument
def puts_one(arg1)
  puts "arg1: #{arg1}"
end

# this one takes no arguments
def puts_none()
  puts "I got nothin."
end

puts_two("Blue fish", "Red fish","Dead fish")  
# above method only uses the first 2 arguments so the 3rd is disregarded.
puts_two_again("Blue fish", "Red fish")
puts_one("Blue fish")
puts_none()




