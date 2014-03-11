filename = ARGV.first

puts "We're going to read from file #{filename}."
puts "If you don't want that, hit CTRL-C (^C)"
puts "If you do want that, hit RETURN."
print "? "
STDIN.gets

target = File.open(filename)

puts target.read()
target.close()