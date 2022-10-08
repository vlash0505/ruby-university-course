
require 'test/unit'
require_relative 'part_a'

class TestIntegration < Test::Unit::TestCase
  $a1 = 0.2
  $b1 = 1.0

  def f1(x)
    Math.sqrt(2**x - 1)
  end

  def f2(x)
    (1 / (1 + Math.sqrt(2 * x)))
  end

  def setup
    @part_a = PartA.new
  end

  def test_prm
    assert_equal((@part_a.prm($a1, $b1, 100000.0) {|x| f1(x)}).round(2), 0.57)
    assert_equal((@part_a.prm($a1, $b1, 100000.0) {|x| f2(x)}).round(2), 0.39)
  end

  def test_rtp
    assert_equal((@part_a.trp($a1, $b1, 100000.0) {|x| f1(x)}).round(2), 0.57)
    assert_equal((@part_a.prm($a1, $b1, 100000.0) {|x| f2(x)}).round(2), 0.39)
  end

  def test_equals_prm_rtp
    assert_equal(@part_a.prm($a1, $b1, 100000.0) {|x| f1(x)}.round(2), @part_a.trp($a1, $b1, 100000.0) {|x| f1(x)}.round(2))
    assert_equal(@part_a.prm($a1, $b1, 100000.0) {|x| f2(x)}.round(2), @part_a.trp($a1, $b1, 100000.0) {|x| f2(x)}.round(2))
  end
end
