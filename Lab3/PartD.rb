
EPS = 0.000001

def factorial(n)
  n > 1 ? n * factorial(n - 1).to_f : 1
end

def first_sum
  sum = 0.0
  n = 2
  num = 0
  while num.abs < EPS
    num = (factorial(n - 1) / factorial(n + 1)) ** (n * (n + 1))
    sum += num
    n += 1
  end
  sum
end

def second_sum
  sum = 1.0
  num = 1.0
  numerator = -1.0
  denominator = 3.0
  while num.abs > EPS
    num = numerator / denominator
    sum += num
    numerator = numerator * (-1)
    denominator += 2
  end
  sum
end

def third_sum
  n = 1
  num = 1
  sum = 0
  while num > EPS
    num = factorial(4 * n) * factorial(2 * n - 1) / (factorial(4 * n + 1) * (4 ** (2 * n)) * factorial(2 * n))
    sum += num
    n += 1
  end
  sum
end

puts first_sum
puts second_sum
puts Math::PI / 4
puts third_sum
