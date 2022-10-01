
def first_function(x)
  sum = 1
  numerator = -2
  denominator = 3
  (1..10).each {
    |i|
    sum += numerator / denominator * x ** i

    numerator = (numerator + 1) * (-1)
    denominator = denominator + 1
  }
  sum
end

def second_function
  sum = 0
  (0..9).each {
    |i|
    sum += 1.0 / (3 ** i)
  }
  sum
end

def third_function(x)
  n = 10

  sum = 0
  fact = 1
  (0..n + 1).each {
    |i|
    sum += (x.to_f ** i) / fact
    fact *= (i + 1)
  }
  sum
end

def fourth_function
  sum = 0
  m = 1
  n = 10

  (1..n).each {
    sin_sum = 0
    (1..m).each {
      |j|
      sin_sum += Math.sin(j)
    }
    sum += 1 / sin_sum
    m = m + 1
  }
  sum
end

puts first_function(2)
puts second_function
puts third_function(10)
puts fourth_function
