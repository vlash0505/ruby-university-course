
$a = [1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 3, 4, 5, 5]
$b = [3, 3, 6, 3, 4, 1, 2, 8, 8, 1, 1, 2, 7, 7, 7]

def build_result
  d = []
  (0...15).each do|i|
    if i % 2 == 0
      d.push($a[i] + $b[i])
    end
  end

  (0...15).each do|i|
    if i % 2 != 0
      d.push($a[i] + $b[i])
    end
  end

  puts d
end

build_result