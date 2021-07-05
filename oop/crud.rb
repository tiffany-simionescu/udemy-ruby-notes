module Crud
  require 'bcrypt'
  puts "Module CRUD Activated"

  def create_hash_password(password)
    BCrypt::Password.create(password)
  end
  # Does not require the instance of the object with self
  def verify_hash_password(password)
    BCrypt::Password.new(password)
  end

  # Crud. = when you call a mehtod with its class name like this,
  # it's called a class method, and you can also use self.create_secure_users
  # here instead
  def create_secure_users(list_of_users)
    list_of_users.each do |user|
      user[:password] = create_hash_digest(user[:password])
    end
    list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user|
      if user[:username] == username && verify_hash_digest(user[:password]) == password
        return user 
      end
    end
    "Credentials were not correct"
  end
end