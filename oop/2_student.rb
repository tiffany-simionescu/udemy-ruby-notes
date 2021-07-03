# class names begin with capital letter
class Student 
  # Attribute Accessors - Getter and Setter Methods, takes identities
  attr_accessor :first_name, :last_name, :email, :username, :password
  # Attribute Reader - Can only read the attributes
  # attr_reader :username

  # instance variables
  # @first_name
  # @last_name
  # @email 
  # @username
  # @password 

  # Initialize Method
  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email 
    @username = username
    @password = password
  end

  # Must create a setter method for attribute readers
  # def set_username
  #   @username = "tiffany1"
  # end

  # # Setter Method
  # def first_name=(name)
  #   @first_name = name
  # end

  # # Getter Method
  #  def first_name
  #   @first_name
  #  end

  # default method to_s = to string
  def to_s
    "\nFirst name: #{@first_name},
    \nLast name: #{@last_name},
    \nEmail: #{@email},
    \nUsername: #{@username}"
  end
end

# Object of type Student
# tiffany = Student.new 
# # will display hex representation of of tiffany
# # puts tiffany 

# tiffany.first_name = "Tiffany"
# tiffany.last_name = "Simionescu"
# tiffany.email = "tiffany.simionescu@gmail.com"
# # have to call the setter method with attribute readers
# # tiffany.set_username
# tiffany.username = "tiffanysimionescu"
# tiffany.password = "password"
# puts tiffany

tiffany = Student.new("Tiffany", "Simionescu", "tiffany.simionescu@gmail.com", "tiffany1", "password")
puts tiffany
jane = Student.new("Jane", "Doe", "jane@gmail.com", "jane1", "password")
puts jane 

# Objects can interact
jane.last_name = tiffany.last_name
puts "\nJane's last name has been changed to Tiffany's last name."
puts "#{jane.first_name} #{jane.last_name}"
