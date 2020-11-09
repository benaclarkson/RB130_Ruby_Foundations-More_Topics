# Optional Blocks
# Write a method that takes an optional block. If the block is specified, the method should execute it, and return the value returned by the block. If no block is specified, the method should simply return the String 'Does not compute.'.

def compute(arg='')
  return yield(arg) if block_given?
  'Does not compute.'
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

p compute([1, 2, 3]) == 'Does not compute.'
p compute([1, 2, 3]) { |num| num << 6 } == [1, 2, 3, 6]
p compute('Hello') { |str| "#{str} world!" } == 'Hello world!'