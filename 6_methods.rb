def multiply(num1, num2)
  # the last expression / statement in a method is automatically returned
  "#{num1} * #{num2} = #{num1.to_f * num2.to_f}"
end

def divide(num1, num2)
  "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
end

def add(num1, num2)
  "#{num1} + #{num2} = #{num1.to_f + num2.to_f}"
end

def subtract(num1, num2)
  "#{num1} - #{num2} = #{num1.to_f - num2.to_f}"
end

def modulus(num1, num2)
  "#{num1} % #{num2} = #{num1.to_f % num2.to_f}"
end

puts "Simple Calculator"
25.times { print "-" }

puts "\nEnter the first number"
num1 = gets.chomp.to_i

puts "Enter an operator"
operator = gets.chomp

puts "Enter the second number"
num2 = gets.chomp.to_i

case operator
when "+"
  puts add(num1, num2)
when "-"
  puts subtract(num1, num2)
when "*"
  puts multiply(num1, num2)
when "/"
  puts divide(num1, num2)
when "%"
  puts modulus(num1, num2)
else 
  puts "Invalid input. Please enter two numbers and an operator (+, -, *, /, %)"
end
