
def function(x)
    case x
    when -4..0
      ((x - 2).abs / (x ** 2 * Math.cos(x))) ** (1.0 / 7.0)
    when 0..12
      1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0 / 4.5)
    else
      1 / (1 + x / (1 + x / (1 + x)))
    end
end

def function_but_with_if(x)
  if x > -4 && x <0
    ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
  elsif x >= 0 && x <= 12
    1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0/4.5)
  else
    1 / ( 1 + x / (1 + x / (1 + x)))
  end
end


puts "function(-3) =   #{function(-3)}    =  #{function_but_with_if(-3)}  "
puts "function(3)  =    #{function(3)}     =  #{function_but_with_if(3)}   "
puts "function(-5) =    #{function(-5)}     =  #{function_but_with_if(-5)} "
