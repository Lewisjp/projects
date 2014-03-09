require 'debugger'

class OneSentence

	def initialize(num)

		case num
      when 1 
        print "Hello World!"
  	  when 2 
        print "Hello again!"
  	  when 3 
        print "I like typing this."
  	  when 4 
        print "This is fun."
  	  when 5 
        print "Yay! Printing."
  	  when 6 
        print "I'd much rather you 'not'."
  	  when 7 
        print 'I "said" do not touch this.'
    else 
      print "out of bounds..."
    end

	end

end

print "Enter a number from 1 to 7 to display a sentence."
number = gets.chomp.to_i
OneSentence.new(number)