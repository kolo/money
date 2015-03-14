require 'minitest_helper'

class TestMoney < Minitest::Test
  def test_to_s
    assert_equal '0.80', Money.new(80, 2).to_s
    assert_equal '1.25', Money.new(125, 2).to_s
    assert_equal '14.48', Money.new(1448, 2).to_s
  end

  def test_sum
    assert_equal Money.new(80), Money.new(100) - Money.new(20)
  end
end
