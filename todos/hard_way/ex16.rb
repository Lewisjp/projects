=begin 

close -- Closes the file. Like File->Save.. in your editor.
read -- Reads the contents of the file, you can assign the result to a variable.
readline -- Reads just one line of a text file.
truncate -- Empties the file, watch out if you care about the file.
write(stuff) -- Writes stuff to the file.

=end 

filename = ARGV.first
# script = $0 # unneccessary line 

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets #User input w/o chomp (w/o removing carriage return chars like \n)

puts "Opening the file..."
target = File.open(filename, 'w') # w is for write.  It also physically creates the file.

puts "Truncating the file. Goodbye!" # This is optional for writing to a file.
target.truncate(target.size) # Empties the file

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

# refactored

target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

puts "And finally, we close it."
target.close()


=begin 

Without the w on line 22, 

target = File.open(filename)

you get the following error
ex16.rb:25:in `truncate': not opened for writing (IOError)
	from ex16.rb:25:in `<main>'
The w is necessary to create a file.

=end
