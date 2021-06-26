puts "Enter your first name?"
first_name = gets.chomp

puts "Enter your last name"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"

puts "Your full name is #{full_name}"
puts "Your full name reservsed is #{full_name.reverse}"
puts "Your name has #{full_name.length - 1} characters in it"

puts "Enter a number to multiply by 2"
input = gets.chomp
puts "#{input} * 2 = #{input.to_i * 2}"