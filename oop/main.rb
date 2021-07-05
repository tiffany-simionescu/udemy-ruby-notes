require_relative 'crud'

## Also works if in the same directory
# $LOAD_PATH << "."
# require 'crud'

users = [
  { username: "tiffany", password: "1234" },
  { username: "dougie", password: "4321" },
  { username: "sophie", password: "1111" }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users