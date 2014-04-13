=begin 
2.1

These blogs and exercises are from "Introduction to Algorithms" 2nd edition.  Its official site is
http://mitpress.mit.edu/algorithms/
=end

=begin 

We are going to recreate the sort method.  We'll order the elements of an array in numerical order.  

Pseudocode:
  Iterate through the array.
  Each time take a key to compared with the rest of the values to the left of it.
  If the key is smaller than the one immediately to the left, swap them.

  We will skip the 0 index of the array, because there is nothing to its left.

=end

numbers = [5,2,4,6,1,3]


def insertionSort(array)

  for j in 1...array.length 
    key = array[j]
    i = j-1
    while i>=0 and array[i] > key 
      array[i+1] = array[i]
      i = i-1
    end 
    array[i+1] = key
  end 
  array 
end

insertionSort(numbers) #=> [1, 2, 3, 4, 5, 6]

