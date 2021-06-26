puts 1 + 2

puts 10 / 4 # 2
puts 10 / 4.0 # 2.5
puts 10 / 4.to_f # 2.5

x = 5
y = 10

puts y / x # 2

puts "-" * 20

20.times { print "-" }
20.times { puts rand(10) }

puts "5".to_i * "5.0".to_f # 25.0

puts "Hello".to_i # 0
puts "Hello".to_f # 0.0

puts "Simple Calculator"
25.times { print "-" }
puts "Enter the first number"
num_1 = gets.chomp.to_i
puts "Enter the second number"
num_2 = gets.chomp.to_i
puts "Enter an operator"
operator = gets.chomp

case operator
when "+"
  puts "#{num_1} + #{num_2} = #{num_1 + num_2}"
when "-"
  puts "#{num_1} - #{num_2} = #{num_1 - num_2}"
when "*"
  puts "#{num_1} * #{num_2} = #{num_1 * num_2}"
when "/"
  puts "#{num_1} / #{num_2} = #{num_1 / num_2}"
when "%"
  puts "#{num_1} % #{num_2} = #{num_1 % num_2}"
else 
  puts "Invalid input. Please enter two numbers and an operator (+, -, *, /, %)"
end
