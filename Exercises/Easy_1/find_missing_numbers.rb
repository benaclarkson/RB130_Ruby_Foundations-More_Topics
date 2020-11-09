# Find Missing Numbers
# Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

def missing(arr)
  starting_num = arr[0]
  ending_num = arr[-1]
  complete_arr = []

  (ending_num - starting_num + 1).times do
    complete_arr << starting_num
    starting_num += 1
  end

  complete_arr - arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []