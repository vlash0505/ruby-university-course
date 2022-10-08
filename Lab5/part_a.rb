
class PartA
  def dx(a, b, n)
    (b - a) / n
  end

  def prm(a, b, n)
    dx = dx(a, b, n)
    x = a + dx / 2
    sum = 0
    (1..n).each {
      y = yield(x)
      sum += dx * y
      x += dx
    }
    sum
  end

  def trp(a, b, n)
    dx = dx(a, b, n)
    x = a + dx
    sum = dx * (yield(a) / 2 - yield(b) / 2)
    loop {
      y = yield(x)
      sum += dx * y
      x += dx
      break if x > b
    }
    sum
  end
end