dial_book = {
  "newyork" => "212",
  "bewbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  city_names = somehash.keys

  city_names.each do |city|
    puts city
  end
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  area_code = somehash[key]
end

# Execution Flow
loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase 
  if answer != "y"
    puts "Have a nice day!"
    break
  end
  # break if answer != "y"

  puts "Which city do you want the area code for?"
  get_city_names(dial_book)
  puts "Enter your selection"
  city_answer = gets.chomp.downcase 

  if dial_book.include?(city_answer)
    puts "The area code for #{city_answer} is #{get_area_code(dial_book, city_answer)}"
  else 
    puts "The city you entered is not in the dial book."
  end
end