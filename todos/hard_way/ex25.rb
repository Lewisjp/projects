=begin in the terminal... $ irb
2.0.0-p247 :001 > require './ex25'
 => true 
2.0.0-p247 :002 > sentence = "All good things come to those who wait."
 => "All good things come to those who wait." 
2.0.0-p247 :003 > Ex25.sort_sentence(sentence)
 => ["All", "come", "good", "things", "those", "to", "wait.", "who"] 
2.0.0-p247 :004 > Ex25.print_first_and_last(sentence)
All
wait.
 => nil 
2.0.0-p247 :005 > Ex25.print_first_and_last_sorted(sentence)
All
who
 => nil 
2.0.0-p247 :006 > ^D
SyntaxError: (irb):6: syntax error, unexpected '^'
	from /Users/Flatiron/.rvm/rubies/ruby-2.0.0-p247/bin/irb:13:in `<main>'
2.0.0-p247 :007 > exit
new-host-27:hard_way Flatiron$ clear

new-host-27:hard_way Flatiron$ irb
2.0.0-p247 :001 > require './ex25'
 => true 
2.0.0-p247 :002 > sentence = "Above all integrity for in truth lies victory"
 => "Above all integrity for in truth lies victory" 
2.0.0-p247 :003 > words = Ex25.break_words(sentence)
 => ["Above", "all", "integrity", "for", "in", "truth", "lies", "victory"] 
2.0.0-p247 :004 > sorted_words = Ex25.sort_words(words)
 => ["Above", "all", "for", "in", "integrity", "lies", "truth", "victory"] 
2.0.0-p247 :005 > Ex25.print_first_word(words)
Above
 => nil 
2.0.0-p247 :006 > Ex25.print_last_word(words)
victory
 => nil 
2.0.0-p247 :007 > sorted_words
 => ["Above", "all", "for", "in", "integrity", "lies", "truth", "victory"] 
2.0.0-p247 :008 > Ex25.sort_sentence(sentence)
 => ["Above", "all", "for", "in", "integrity", "lies", "truth", "victory"] 
2.0.0-p247 :009 > Ex25.print_first_and_last(sentence)
Above
victory
 => nil 
2.0.0-p247 :010 > Ex25.print_first_and_last_sorted(sentence)
Above
victory
 => nil 
2.0.0-p247 :011 > 
=end

module Ex25
	def self.break_words(stuff)
		#This function will break up words for us.
		words = stuff.split(' ') #converts the string into an array broken up by the ' ' character
		words
	end

	def self.sort_words(words)
		#Sorts the words.
		words.sort() #sorts the array by alphabetical right
	end

	def self.print_first_word(words)
		#Prints the first word and shifts the others down by one.
		word = words.shift()  #To retrieve and at the same time remove the first item from the array.
		puts word
	end

	def self.print_last_word(words)
		#Prints the last word after popping it off the end
		word = words.pop() #pop removes the last element in an array and returns it
		puts word
	end

	def self.sort_sentence(sentence)
		#Takes in a full sentence and returns the soted words.
		words = break_words(sentence) #call the break_words function
		sort_words(words) #calls and returns result of sort_words function
	end

	def self.print_first_and_last(sentence)
		#Prints the first and last words of the sentence.
		words = break_words(sentence) #call the break_words function
		print_first_word(words) #calls the print_first_word function
		print_last_word(words) #calls the print_last_word function
	end

	def self.print_first_and_last_sorted(sentence)
		#Sorts the words then prints the first and last one.
		words = sort_sentence(sentence) #calls the sort_sentence function
		print_first_word(words) #calls the print_first_word function
		print_last_word(words) #calls the print_last_word function
	end
end

=begin 

Line 2 you require your ./ex25.rb Ruby file, just like other requires you have done. Notice you do not need to put the .rb at the end to require it. When you do this you make a module that has all your functions in it to use.
Line 4 you made a sentence to work with.
Line 6 you use the Ex25 module and call your first function Ex25.break_words. The . (dot, period) symbol is how you tell Ruby, "Hey, inside Ex25 there's a function called break_words and I want to run it."
Line 8 we do the same thing with Ex25.sort_words to get a sorted sentence.
Lines 10-15 we use Ex25.print_first_word and Ex25.print_last_word to get the first and last word printed out.
Line 16 is interesting. I made a mistake and typed the words variable as wrods so Ruby gave me an error on Lines 17-18.
Lines 19-20 is where we print the modified words list. Notice that since we printed the first and last one, those words are now missing.
The remaining lines are for you to figure out and analyze in the extra credit.

The reason we put our functions in a module is so they have their own namespace. If someone else writes a function called break_words, we won't collide. However, if typing Ex25. is annoying, you can type include Ex25 which is like saying, "Include everything from the Ex25 module in my current module."


=end 

