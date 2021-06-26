# condition = false
# another_condition = false

# if !condition || another_condition
#   puts "this evaluated to true"
# else 
#   puts "this evaluated to false"
# end
# puts "La la la"

name = "Tiffany"

if name == "Tiffany"
  puts "Welcome to the program, Tiffany"
elsif name == "Dougie"
  puts "Welcome to the program, Dougie"
elsif name == "Sophie"
  puts "Welcome to the program, Sophie"
else  
  puts "Welcome to the program, Stranger"
end


# HOMEWORK
def add(num1, num2)
  puts"You have chosen addition"
  "#{num1} + #{num2} = #{num1.to_f + num2.to_f}"
end

def subtract(num1, num2)
  puts"You have chosen subtraction"
  "#{num1} - #{num2} = #{num1.to_f - num2.to_f}"
end

def multiply(num1, num2)
  puts"You have chosen multiplication"
  "#{num1} * #{num2} = #{num1.to_f * num2.to_f}"
end

def divide(num1, num2)
  puts"You have chosen division"
  "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
end

def modulus(num1, num2)
  puts "You have chosen modulus"
  "#{num1} % #{num2} = #{num1.to_f % num2.to_f}"
end

puts "Simple Calculator"
20.times { print "-" }
puts "\nEnter first number"
num1 = gets.chomp.to_f

puts "Enter second number"
num2 = gets.chomp.to_f

puts "What do you want to do?"
puts "Enter 1 for addition, 2 for subtraction, 3 for multiplication, 4 for division, 5 for modulus"
operator = gets.chomp.to_i
puts "You selected #{operator}"

if operator == 1
  puts add(num1, num2)
elsif operator == 2
  puts subtract(num1, num2)
elsif operator == 3
  puts multiply(num1, num2)
elsif operator == 4
  puts divide(num1, num2)
elsif operator == 5
  puts modulus(num1, num2)
else  
  puts "Invalid entry"
end
