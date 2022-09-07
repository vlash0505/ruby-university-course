x = gets.to_f
a = gets.to_f
b = gets.to_f

puts (6.2 * 10**2.7 + Math.tan(Math::PI - x**3))/(Math::E**(x/a) + Math.log((b**2).abs)) + Math.atan((10**3 * Math.sqrt(a)) / (2 * x - b))
