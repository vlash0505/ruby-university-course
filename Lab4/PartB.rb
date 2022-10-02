$matrix_a = Array.new(8) {Array.new(8)}
$matrix_b = Array.new(8) {Array.new(8)}

$sum_matrix = Array.new(8) {Array.new(8)}

def fill_matrix
  (0...7).each do |row|
    (0...7).each do |cell|
      $matrix_a[row][cell] = 1
      $matrix_b[row][cell] = 2
    end
  end
end

def calculate_sum
  (0...7).each do |row|
    (0...7).each do |cell|
      $sum_matrix[row][cell] = $matrix_a[row][cell] + $matrix_b[row][cell]
    end
  end
end

def print_sum
  (0...7).each do |row|
    (0...7).each do |cell|
      print $sum_matrix[row][cell]
      print " "
    end
    puts "\n"
  end
end

fill_matrix
calculate_sum
print_sum