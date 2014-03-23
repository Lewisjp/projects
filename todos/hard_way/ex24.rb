# We start out with presenting txt \' allows us to use ' without ruby thinking we're starting a new string.
puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabes."

poem = <<MULTI_LINE_STRING

\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of lovelynor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
MULTI_LINE_STRING

puts "-----------------"
puts poem # display MULTI_LINE_STRING 
puts "-----------------"

five = 10 - 2 + 3 -6
puts "this shuld be five: #{five}"

def secret_formula(started)
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates  
	# this allows us to return these 3 variables 
end

start_point = 1000
# use function secret_formula with variable start_point
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)
# %s allows us to display the values returned from function secret_formula as strings.  The method returns 3 variables whose values are displayed in order using %s 