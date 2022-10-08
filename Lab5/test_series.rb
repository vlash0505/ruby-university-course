
require 'test/unit'
require_relative 'part_b'

class TestSeries < Test::Unit::TestCase

  $a = 0.1
  $b = 0.8

  def setup
    @part_b = PartB.new
  end

  def equation(x, i)
    x**i * Math.cos(i * Math::PI / 3) / i
  end

  def test_calculation
    assert_equal(@part_b.calculate(method(:equation), 1, 20).round(2), 0.03)
    assert_equal(@part_b.calculate(method(:equation), 1, 30).round(2), 0.02)
    assert_equal(@part_b.calculate(method(:equation), 1, 40).round(2), -0.02)
    assert_equal(@part_b.calculate(method(:equation), 1, 50).round(2), 0.01)
  end

end
