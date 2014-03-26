require 'debugger'
=begin  
Create a program that gives an example of every item listed from 
ex22.rb being used.
in terminal$ ruby ex22-1.rb cat 2 3 dog test.txt

%d - represents a digit in a text string
%s - represents a string of text in a test string

< - less than

<= - less than or equal to
> - greater than
>= - greather than or equal to
File - used to define and enact file options
File.close() - close a file
File.exists? - check to see if the file already exists or not
File.open() - opens a file for use
File.open(filename, 'w') - opens a file for writing
File.read() - reads contents of a file
File.readline() - reads a specific numbered line in a file
File.seek() - locate a particular spot in the file
File.truncate() - used to remove contents of a file
FIle.write() - write line or characters to a file
STDIN - used with methods when ARGV is used to differentiate between the two
[] - used to seperate arguments from puts and print statements
\\ - escapes a backslash
chomp - used typucally with gets.  Removes the newline character from a line of text.
do - reflects the start of a block of code to be run together 
gets - get a string from standard input (usually a keyboard)
open - open a file or URL
print - takes text and displays it on the screen, no new line applied.


=end

# Script is read from top down.  Unless variables are used in a method they have to be declared first.
# Below the what variable is used without a method, so it has to be declared before usage.
first, second, third, forth = ARGV # ARGV takes in variables input from the command line.  For this exercise we'll take up to 4 variables from the user.  


def introduction # def opens a function/ method
	puts "This is an introduction program to ruby." # puts includes \n newline before displaying a string
	puts "If you entered this from the command line it would have looked something like this..."
	puts "\n\t$\t#{$0}" # "#{$0}"" displays the script ran from the command line. 
end # end, closes a function/ method

def userInput(first)
	puts "You have provided some variables.  The first one is #{first}."  
	# #{first} == #{variable} displays the value of a variable in a string
	print "Good value there." # display string without introducing a new line.
end

def mathChoice(second, third)
	puts "Lets do some math."
	puts "#{second} + #{third} = #{second + third}"
	puts "#{second} - #{third} = " + (second - third).to_s
	puts "#{second} * #{third} = #{second * third}"
	puts "#{second} / #{third} = " + (second / third).to_s
	puts "#{second} % #{third} = #{second % third}"
end

# call methods
introduction
userInput(first)
mathChoice(second.to_i, third.to_i)

puts <<MESSAGE
The 4th value you provided was #{forth}.
Nice choice.  Now here is a haiku...
Cats meow out of angst
Thumbs! If only we had thumbs!
We could break so much 
MESSAGE