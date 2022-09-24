
def calculate_formula(p, t, r)
  p**r * (1 - p**(-t))
end

puts calculate_formula(5, 8, 0)