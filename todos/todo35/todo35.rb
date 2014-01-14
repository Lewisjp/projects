=begin

Reimplement your own version of Ruby Array's transpose method
 
class Array
  def my_transpose
    ___
  end
end
 
[[1, 2, 3], [:a, :b, :c]].my_transpose #=> [[1, :a], [2, :b], [3, :c]]
[[1,2], [3,4], [5,6]].transpose #=> [[1, 3, 5], [2, 4, 6]]
[].transpose #=> []

=end


class Array
	def my_transpose(arr1, arr2)
		arr1.collect {|x| "#{arr1[x]}" + "#{arr2[x]}"}
	end
end
