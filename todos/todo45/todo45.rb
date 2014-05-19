require 'debugger'

def sort_reindeer reindeer_names
  first_name = Array.new
  last_name = Array.new
  sorted_reindeer = Array.new
  full_name = Hash.new
  reindeer_names.each do |x|
    reindeer = x.split(" ")
    full_name[reindeer[1]] = reindeer[0]
    last_name << reindeer[1]
  end
  last_name.sort!
  last_name.count.times do |x|
    sorted_reindeer << full_name[last_name[x]] + " " + last_name[x]   
  end
  return sorted_reindeer
end


puts sort_reindeer([
  "Dasher Tonoyan", 
  "Dancer Moore", 
  "Prancer Chua", 
  "Vixen Hall", 
  "Comet Karavani",        
  "Cupid Foroutan", 
   "Donder Jonker", 
   "Blitzen Claus"
]).inspect

=begin
  
def sort_reindeer(reindeer_names)
  reindeer_names.sort_by{|a| a.split(' ').last }
end


=end