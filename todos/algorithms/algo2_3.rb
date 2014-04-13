require 'debugger'
=begin 
3 Steps to a Solution:
1. <i>Divide</i> the problem into subproblems
2. <i>Conquer</i> each subproblem
3. <i>Combine</i> the solutions
Time to revisit sorting...
Approach:
1. <i>Divide</i> the n-element array into two sequences. 
2. <i>Conquer</i> each sequence by sorting them
3. <i>Combine</i> the sorted sequences for a total sorted solution

Array[p..r]
p = proportion, or index
r = n = total sample size

1. Divide it into Array[p..q] and Array[q+1..r]
2. Conquer using recursion
http://en.wikipedia.org/wiki/Recursion
 to sort the two subarrays.  We do this till they are broken down to their elements.
3. Combine the sorted subarrays into a sorted answer.  

=end

def mergeSort(array)

  # We need at least 2 elements to sort
  return array if array.length <= 1 

  # 1. Divide Array into Array[p..q] and Array[q+1..r]
  half = array.length/2

  # The subarrays are broken down even further 
  left = mergeSort(array.slice(0,half))
  right = mergeSort(array.slice(half, array.length))

  merge(left,right)
end

# 2. Conquer who subarrays 
# 3. Combine the sorted subarrays into a sorted answer.  

def merge(left, right)
  final_sort = [] 
  # Make comparison while we have two subarrays with elements
  while !left.empty? && !right.empty?
    # compare the first elements of the left & right subarrays
    # if the first element of the left is larger or equal, remove it from the left array and place it in the final_sort array
    if left.first <= right.first
      final_sort << left.shift
    else
    # if the previous condition failed, then remove the first element of the right array and put it in the final_sort array
      final_sort << right.shift
    end
  end
  # if there is a remaining single element combine it with the final_sort array
  final_sort.concat(left).concat(right)
end


mergeSort([8,7,6,5,4,3,2,1]) #=> [1, 2, 3, 4, 5, 6, 7, 8]
