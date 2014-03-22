require 'debugger'

# In the terminal you enter 2 files to be processed
# ex17.rb test.txt copied.txt
from_file, to_file = ARGV 
script = $0

puts "Copying from #{from_file} to #{to_file}"

input = File.open(from_file)
indata = input.read()

puts "The imput file is #{indata.length} bytes long"

# Try to make it more friendly to use by removing features.
# puts "Does the output file exist? #{File.exists? to_file}"
# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

# close items to prevent memory leaks
output.close()
input.close()

# In computer science, a memory leak occurs when a computer program incorrectly manages memory allocations. In object-oriented programming, a memory leak may happen when an object is stored in memory but cannot be accessed by the running code. 