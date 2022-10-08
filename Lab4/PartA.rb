
$a = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 1.0, 2.0, 3.0, 3.0, 4.0, 5.0, 5.0]
$b = [3.0, 3.0, 6.0, 3.0, 4.0, 1.0, 2.0, 8.0, 8.0, 1.0, 1.0, 2.0, 7.0, 7.0, 7.0]

def build_result
  d = []
  (0...15).each do|i|
    if i % 2 == 0
      d.push(($a[i] + $b[i]).to_i)
    end
  end

  (0...15).each do|i|
    if i % 2 != 0
      d.push(($a[i] + $b[i]).to_i)
    end
  end

  puts d
end

build_result