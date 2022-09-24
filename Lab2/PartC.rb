
def to_decimal(binary)
  sum = 0
  binary.reverse.chars.map.with_index do |digit, index|
    sum += digit.to_i * 2**index
  end
end

puts to_decimal("10001001001001")