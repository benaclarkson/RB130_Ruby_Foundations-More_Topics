# [1, 2, 3].reduce(10) do |acc, num|
#   acc + num
# end

# => 6

def reduce(arr, accum=0)
  counter = 0

  while counter < arr.size
    accum = yield(accum, arr[counter])
    counter += 1
  end

  accum
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }
p reduce(array, 10) { |acc, num| acc + num }
# p reduce(array) { |acc, num| acc + num if num.odd? }