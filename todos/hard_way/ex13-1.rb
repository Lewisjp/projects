first, second, third, fourth, fifth = ARGV

puts "Whats your favorite video game?"
game = STDIN.gets.chomp()

puts "#{game} is a great game! Word association is... #{first} #{second} #{third} #{fourth} #{fifth}."

=begin 

If you tried the same script above with line 4 being 
game = gets.chomp()

You'll get the following

$ ruby ex13-1.rb sara oliver katie amine
Whats your favorite video game?
ex13-1.rb:4:in `gets': No such file or directory - sara (Errno::ENOENT)
	from ex13-1.rb:4:in `gets'
	from ex13-1.rb:4:in `<main>'

 STDIN.gets.chomp() is used to gather user input when dealing with ARGV 

=end