def prompt
	print "> "
end

puts "You enter a dark room with two doors.  DO you go through door #1 or door #2?"

prompt; door = gets.chomp.to_s

if door == "1"
puts <<MESSAGE
Theres a giant bear here eating a cheese cake.  What do you do?
1. Take the cake.
2. Scream at the bear.
MESSAGE

  prompt; bear = gets.chomp.to_s

  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well, doing #{bear} is probably better.  Bear runs away."
  end

elsif door == "2"
puts "You stare into the endless abyss at Cthuhlus retina."
puts "1. Blueberries."
puts "2. Yellow jacket clothespins."
puts "3. Understanding revolvers yelling melodies."
 

  prompt; insanity = gets.chomp.to_s

  if insanity == ("1" || "2")
    puts "Your body survives powered by a mind of jello.  Good job!"
  else
    puts "The insanity rots your eyes into a pool of much.  Good job!"
  end

else
  puts "You stumble around and fall.  Good job!"
end










