#Collections Practice
 
#1. 
  ["blake", "ashley", "scott"].sort 
#2. 
  ["blake", "ashley", "scott"].sort.reverse
#3. 
  ["blake", "ashley", "scott"].reverse
#4. 
  step4 = ["blake", "ashley", "scott"]
  step4[1]
#5. 
  print ["blake", "ashley", "scott"]
    
#6. 
  step6 = Array.new
  step6 << "blake" << "ashley" << "scott"

  puts "Exercise 7 was commented out"
=begin

#7. using the following array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign. !!! It does not process the hash in the do look !!!! 
  step7_hash = Hash.new
  step7_keys = ["blake", "ashley", "scott"] 
  step7_values = ["blake", "ashley", "scott"].each {|x| x.gsub!(x[2],"$")}
  step7_convert = step7_keys + step7_values
  step7_convert.each {|x| 

  3.times do |x|  
    step7_hash = { step7_convert[x] => step7_convert[x+3] } 
  end
=end


#8. 
  greater_than_10 = Array.new
  less_than_10 = Array.new
  [100, 1000, 5, 2, 3, 15, 1, 1, 100 ].each  {|x| greater_than_10 << x if x > 10} 
  [100, 1000, 5, 2, 3, 15, 1, 1, 100 ].each  {|x| less_than_10 << x if x < 10}
  {:greater_than_10 => greater_than_10, :less_than_10 => less_than_10 }
#9. 
  winners = Array.new
  losers = Array.new
  {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}.each {|key, value| winners << key if value == "winner"}
  {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}.each {|key, value| losers << key if value == "loser"}


#10. 
  q10_all = Array.new
  q10_answer = Array.new
  q10_all = [1,2,3] + [5,9,4]

  3.times do |i|  
    q10_all[i] += q10_all[i+3]
  end

  3.times do |i|  
    q10_answer << q10_all[i]
  end
  #q10_answer has the answer 

#11.
  ["apple", "orange", "pear", "avis", "arlo", "ascot" ].each  {|x| puts x if x[0] == "a"}

#11. sum all the numbers in the following array
  sum_array = 0
  [11,4,7,8,9,100,134].each {|x| sum_array += x}
  #sum_array has the answer 

#12. Add an "s" to each word in the array except for the 2nd element in the array?
  ["hand","feet", "knee", "table"].each  {|word| word << "s" }

=begin
CHALLENGE
 
word count
 
"The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"
 
Count how many times each word appears in my story.
Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.

 
#song library - convert the following array of song titles
song_library = Hash.new

s_library =  ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"].split('')
 

to a nested hash of the form
{:artist1 => :songs => [], :artist2 => :songs => []}
[]`

=end
