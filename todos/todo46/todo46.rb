# input: names - an array of unsorted strings
# output: case-agnostic sort
def sortme( names )
  check = Array.new
  result = Array.new
  record = Hash.new
  names.each do |x| 
    record[x.downcase] = x 
    check << x.downcase
  end
  check.sort!
  check.each do |x|
    result << record[x]    
  end
  result
end

=begin

def sortme( names )
  names.sort_by {|name| name.downcase }
end

=end