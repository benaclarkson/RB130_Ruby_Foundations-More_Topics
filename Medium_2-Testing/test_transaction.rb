require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(30)
    mock_input = StringIO.new("30\n")
    mock_output = StringIO.new
    item_cost = 30

    transaction.prompt_for_payment(input: mock_input, output: mock_output)

    assert_equal 30.00, transaction.amount_paid
  end
end