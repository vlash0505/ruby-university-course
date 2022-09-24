
def decimal_to_binary(decimal)
  result = ''
  while decimal > 0
    result += (decimal % 2).to_s
    decimal /= 2
  end
  result.reverse
end

puts decimal_to_binary(334)
