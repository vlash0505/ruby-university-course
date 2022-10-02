
def gauss
  n = gets.chomp.to_i
  if n < 3 || n > 9
    raise "N is out of bounds"
  end

  matrix = (0..n - 1).map{Array.new(n - 1)}
  values = Array.new(n){|index| index + 1}

  matrix.size.times do |i|
    matrix.size.times do |j|
      if i == j
        matrix[i][j] = 2
      else
        matrix[i][j] = 14
      end
    end
  end

  puts matrix.map(&:inspect), "\n"

  matrix.size.times do |i|
    coef = matrix[i][i]
    matrix.size.times do |j|
      matrix[i][j] /= coef
    end
    values[i] /= coef
    matrix.size.times do |j|
      if j != i
        coef1 = matrix[j][i]
        matrix.size.times do |k|
          matrix[j][k] -= matrix[i][k] * coef1
        end
        values[j] = values[i] * coef1
      end
    end
    puts matrix.map(&:inspect), "\n"
  end

  values
end

print gauss
