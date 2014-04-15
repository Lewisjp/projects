=begin

Instructions:
Each with object works much like inject. Use each_with_object to return an array containing one reversed string for each string that has an even number of characters.
 
Code:
def even_sum(arr)
  arr.each_with_object___
end
 
even_sum(["cat", "dog", "bird", "fish"]) #=> ["drib", "hsif"]

=end


def even_sum(arr)

  even_string_reverse = arr.each_with_object ([]) { |obj_string, new_array| new_array << obj_string.reverse if obj_string.count % 2 == 0 }
  return even_string_reverse
end
 
even_sum(["cat", "dog", "bird", "fish"]) #=> ["drib", "hsif"]

