# Docs: http://www.ruby-doc.org/core-2.1.1/IO.html
# in terminal run:$ ruby ex20.rb test.txt

# Assigns the first element of the ARGV array to input_file
input_file = ARGV[0]

# prints out entire text file received as an argument
def print_all(f)
	puts f.read()
end

=begin 
	IO class is the basis for all input and output in Ruby. 
	seek command is used and goes back to the start of the text file

	SEEK_SET
	Set I/O position from the beginning

=end 
def rewind(f)
# 	f.seel(space location, Start after space location specified)
	f.seek(0, IO::SEEK_SET)
end

# print a specific line from the text file 
def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end

# opens the defined file in ARGV[0]
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

# current_file is passed along to the print_all method as an argument
print_all(current_file)

puts "Now let's rewind, kind of like a tape."
# takes the file from ARGV[0] and goes to the beginning of the file 
rewind(current_file)

puts "Let's print three lines:"
# Current_line starts out with a value of one, and then before each print_a_line() call, current_line gets incremented (added to) by one
# puts the first line of the file 
current_line = 1 
print_a_line(current_line, current_file)
# puts the second line of the file 
current_line = current_line + 1
print_a_line(current_line, current_file)
# puts the third line of the file 
current_line += 1
print_a_line(current_line, current_file)
