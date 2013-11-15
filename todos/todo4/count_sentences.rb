# Write a method on String called `count_sentences` that returns the number of
# sentences in the string it is called on

=begin

Below was my attempt at making the method myself.  I wanted to move on to the testing before time was up, so I looked at the answer.  

class String
  def count_sentences
    # code goes here
    split =~ /\.|\!|\?/.length 
  end
end




puts "sentence? sentence. sentence!".count_sentences

=end 

class String
  def count_sentences
    split(/\.|\?|!/).length  
  end
end

puts "testing.  testing?  testing!".count_sentences

#works correctly when ran.