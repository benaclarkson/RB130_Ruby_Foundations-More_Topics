# Boolean Assertions
# Write a minitest assertion that will fail if the value.odd? is not true.

def test_odd
  @value = 2

  assert_equal(false, value.odd?)

  # LS Answer
  # assert value.odd?, 'value is not odd'
end