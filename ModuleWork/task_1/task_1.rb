
class Task1

  attr_accessor :a_value, :b_value, :c_value, :x_start, :x_end, :dx

  def initialize(a_value, b_value, c_value, x_start, x_end, dx)
    @a_value = a_value
    @b_value = b_value
    @c_value = c_value
    @x_start = x_start
    @x_end = x_end
    @dx = dx
  end

  def calculate_function
    answers = {}
    # calculating the function on the given interval
    # with the given step
    (@x_start..@x_end).step(@dx).each do |x|
      if x < 0.6 && (@b_value + @c_value != 0)
        answers[x] = @a_value * x ^ 3 + @b_value ^ 2 + @c_value
      elsif x > 0.6 && (@b_value + @c_value == 0)
        answers[x] = (x - @a_value) / (x - @c_value)
      else
        answers[x] = x / @c_value + x / @a_value
      end
    end
    answers
  end

  def output_result
    answers = calculate_function
    answers.each do |key, value|
      print key, " | ", value, "\n"
    end
  end
end
