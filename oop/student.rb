require_relative 'crud'

class Student
  include Crud 
  attr_accessor :first_name, :last_name, :email, :username, :password 

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username 
    @password = password
  end

  def to_s
    "\nFirst name: #{@first_name},
    \nLast name: #{@last_name},
    \nEmail: #{@email},
    \nUsername: #{@username}"
  end
end

tiffany = Student.new("Tiffany", "Simionescu", "tiffany.simionescu@gmail.com", "tiffany1", "password")
hashed_password = tiffany.create_hash_password(tiffany.password)
puts hashed_password