
def first_subtask(a, b, c, x, y, z)
  puts "First subtask"
  puts !(a || b) && (a && !b)
  puts (z != y) == (6 >= y) && a || b && c && x >= 1.5
  puts (8 - x * 2 <= z) && (x**2 <= y**2) ||  (z >= 15)
  puts x > 0 && y < 0 || z >= (x * y - (-y / x)) + (-z)
  puts !(a || b && !(c || (!a || b)))
  puts x^2 + y^2 >= 1 && x >= 0 && y >= 0
  puts (a && (c && b == b || a) || c) && b
end

def second_subtask(x, p)
  puts "Second subtask"
  puts ((Math.log(x) / Math.log(1/3)) > (Math.log(0.7) / Math.log(1/3))) && (Math.sqrt(x) > x * x) && !p
end

puts first_subtask(false, true, true, -24, 4, 8)
puts second_subtask(3, true)
