# Passing Parameters Part 3
# Given this code:

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# Fill out the following method calls for gather so that they produce the corresponding output shown in numbers 1-4 listed below:

# 1)

gather(items) do |*veggies, wheat|
  puts "#{veggies.join(', ')}"
  puts "#{wheat}"
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# 2)

gather(items) do |fruit, *corn_cabbage, wheat|
  puts "#{fruit}"
  puts "#{corn_cabbage.join(', ')}"
  puts "#{wheat}"
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

# 3)

gather(items) do |fruit, *others|
  puts "#{fruit}"
  puts "#{others.join(', ')}"
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

# 4)

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!