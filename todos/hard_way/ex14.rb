user = ARGV.first
prompt = '$ '

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts "How do you feel about becoming a developer?"
print prompt
developer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
Wow, you feel #{developer} about being a developer.
MESSAGE


=begin 

Extra Credit:  Zork and Adventure is  a text-based interactive adventure game that was written in the late 1970's. What Zork lacks for in graphics it makes up in the rich story line and mystery of not just the plot, but trying to figure out how to go about playing the game.

=end