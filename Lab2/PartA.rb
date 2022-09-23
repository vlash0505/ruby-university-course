
def calculate_area(coordinates)
  sum = 0
  (0..coordinates.size - 1).each { |i|
    if i == coordinates.size - 1
      sum += (coordinates[i][0] + coordinates[0][0]) * (coordinates[0][1] - coordinates[i][1])
    else
      sum += (coordinates[i][0] + coordinates[i + 1][0]) * (coordinates[i + 1][1] - coordinates[i][1])
    end
  }
  sum = sum.abs/2
end

coordinates = [[34,145], [37,105], [41,66], [70,56], [99,49],
               [134,41], [52,37], [185,35], [226,31], [282,30],
               [334,31], [413,44], [450,63], [473,107], [490,138],
               [500,217], [495,255], [470,278], [445,276], [401,255],
               [396,216], [396,175], [381,139], [353,118], [310,117],
               [289,130], [256,120], [240,99], [219,84], [172,82],
               [152,90], [139,100], [113,116], [97,126], [68,143]]

puts calculate_area(coordinates)