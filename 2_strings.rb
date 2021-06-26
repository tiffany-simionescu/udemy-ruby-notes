# String concatenation
first_name = "Tiffany"
last_name = "Simionescu"
puts first_name + ' ' + last_name

# String Interpolation - only works with "" and not ''
puts "My first name is #{first_name} and my last name is #{last_name}."

# can experiment with irb = interactive ruby

# Methods
full_name = "#{first_name} #{last_name}"
p full_name.class # String
p "Tiffany".class # String
full_name.methods # lists all available methods

p 10.to_s # converts integer to string
p 10.to_s.class

p full_name.length 
p full_name.reverse
p full_name.empty? # false
p "".empty? # true
p "".nil? # false
p nil.nil? # true
 
sentence = "Welcome to the jungle."
p sentence
new_sentence = sentence.sub("the jungle", "Atlantis")
p new_sentence

first_name = "Tiffany"
# points to same spot in memory
new_first_name = first_name
# creates a new spot in memory
first_name = "Tiff"
p new_first_name # "Tiffany"

# Escape special characters
p 'Tiffany asked \'how are you?\''