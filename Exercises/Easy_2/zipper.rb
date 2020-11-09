# Zipper
# The Array#zip method takes two arrays, and combines them into a single array in which each element is a two-element array where the first element is a value from one array, and the second element is a value from the second array, in order. For example:

# [1, 2, 3].zip([4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

# Write your own version of zip that does the same type of operation. It should take two Arrays as arguments, and return a new Array (the original Arrays should not be changed). Do not use the built-in Array#zip method. You may assume that both input arrays have the same number of elements.

def zip(arr1, arr2)
  result = []
  sub_arr = []
  counter = 0

  arr1.size.times do
    sub_arr << arr1.delete(arr1.first)
    sub_arr << arr2.delete(arr2.first)
    result[counter] = sub_arr
    sub_arr = []
    counter += 1
  end

  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]