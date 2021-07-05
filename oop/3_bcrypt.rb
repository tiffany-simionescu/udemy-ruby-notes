# Passwords are virtually never saved as a String
# Passwords are hashed
# A popular hashing algorithm is MD5 - bcrypt

# gem install bcrypt
require 'bcrypt'

# my_password = BCrypt::Password.create("my_password")
# puts my_password

# my_password_2 = BCrypt::Password.create("my_password")
# puts my_password

# my_password_3 = BCrypt::Password.create("my_password")
# puts my_password

# puts my_password == my_password_2 # false
# puts my_password == my_password_3 # false
# puts my_password == "my_password" # true

# puts my_password.version
# puts my_password.cost 
# my_password == "my password"
# my_password == "not my password"

# my_password = BCrypt::Password.new("$2a$12$ivNrCPK11Mivb1Uc2nttduXU6q4DOkH9FzAtbyy4yjuYPv5Jb2uAS")
# puts my_password == "my_password"
# puts my_password == "not my password"

users = [
  { username: "tiffany", password: "1234" },
  { username: "dougie", password: "4321" },
  { username: "sophie", password: "1111" }
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

# new_password = create_hash_digest("password1")
# puts new_password
# puts new_password == "password1" # true
# puts new_password == "password2" # false

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user|
    user[:password] = create_hash_digest(user[:password])
  end
  list_of_users
end

new_users = create_secure_users(users)
puts new_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user|
    if user[:username] == username && verify_hash_digest(user[:password]) == password
      return user 
    end
  end
  "Credentials were not correct"
end

# new_users has the hashed passwords. Can't use users
p authenticate_user("tiffany", "1234", new_users)
p authenticate_user("tiffany", "1111", new_users)