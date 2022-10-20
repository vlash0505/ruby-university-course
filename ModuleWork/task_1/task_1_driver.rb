
require_relative 'task_1'

puts "a"
a = gets.chomp.to_f
puts "b"
b = gets.chomp.to_f
puts "c"
c = gets.chomp.to_f
puts "Enter start of the interval"
x_start = gets.chomp.to_f
puts "Enter end of the interval"
x_end = gets.chomp.to_f
puts "Enter step"
dx = gets.chomp.to_f

task_1 = Task1.new(a, b, c, x_start, x_end, dx)
task_1.output_result
