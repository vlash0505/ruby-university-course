
require 'test/unit'
require_relative 'task_1'

class TestTask1 < Test::Unit::TestCase

  def setup
    @task_1 = Task1.new(5.0, 5.0, 5.0, 1, 5, 1)
  end

  def test_function
    result = @task_1.calculate_function

    assert_equal(result.values.at(0), 0.4)
    assert_equal(result.values.at(1), 0.8)
    assert_equal(result.values.at(2), 1.2)
    assert_equal(result.values.at(3), 1.6)
    assert_equal(result.values.at(4), 2.0)

    @task_1.a_value = 1.0
    @task_1.b_value = 2.0
    @task_1.c_value = 2.0
    @task_1.x_start = 1
    @task_1.x_end = 5
    @task_1.dx = 1

    result = @task_1.calculate_function

    assert_equal(result.values.at(0), 1.5)
    assert_equal(result.values.at(1), 3.0)
    assert_equal(result.values.at(2), 4.5)
    assert_equal(result.values.at(3), 6.0)
    assert_equal(result.values.at(4), 7.5)
  end

end