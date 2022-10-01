
N = 10
C = 20

def y(x)
  begin
    return ((1 + x + x ** 2) / (2 * x + x ** (1 / N - C)) + 2 - (1 - x + x ** 2) / (2 * x - x ** 2)) ** (-1) * (5 - 2 * x ** 2)
  rescue
    return 0
  end
end

def z(x)
  begin
    return (Math.sin(2 * x )) ** 2 - cos((Math::PI) / 3 - 2 * x) * sin(2 * x - (Math::PI) / 6) - Math.atan(((Math::PI) + x) / (x + 1)) ** (2 / x)
  rescue
    return 0
  end
end

def y_tab
  res = {}
  (1..N).step((N - 1).to_f / (N + C)) do |i|
    puts i
    res[i] = y(i)
  end
  res
end

def z_tab
  res = {}
  i = Math::PI / N
  delta = (Math::PI - Math::PI / N) / ((3.0 / 2) * N + C)
  while i <= Math::PI do
    res[i] = z(i)
    i += delta
  end
  res
end

def y_z_tab
  res = {}
  (2..C).step((C - 2).to_f / (2 * N)) do |j|
    if j > 2 && j < N
      res[j] = y(j)
    elsif j > N && j < 2 * N
      res[j] = z(j)
    else
      res[j] = y(j) + z(j)
    end
  end
  res
end

def print_result(dict)
  dict.each { |i|
    print i.to_s + ": " + dict[i].to_s + "\n"
  }
  print "\n"
end


puts "y tabulation"
print_result(y_tab)
print "z tabulation"
print_result(z_tab)
print "y z tabulation"
print_result(y_z_tab)
