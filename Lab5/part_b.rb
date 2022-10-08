
class PartB

  def calculate(f, x, n)
    x_rage = 0.2..1
    n_range = 20..58

    e = 0.001

    unless x_rage.include? x
      raise "x is wrong"
    end

    res, cur = 0.0, n
    if n_range.include? n
      (1..n).each do |i|
        cur = f.call(x, i)
        res += cur
      end
    else
      i = 0
      while cur.abs >= e
        cur = f.call(x, i)
        res += cur
        i += 1
      end
    end
    res
  end

end
