def remove_odd_hashes(array, key_1, key_2)
  #you can check for "%" operator
  even_hashes = Array.new
  array.each do |hash|
    if (hash[key_1].to_i + hash[key_2].to_i) % 2 == 0
      even_hashes << hash
    end
  end
  return even_hashes
end

puts remove_odd_hashes(
  [ {a: 5, b: 5}, 
    {a: 3, b: 4}, 
    {a: 2, b: 0}, 
    {a: 2, b: 1}], 
  :a, :b)