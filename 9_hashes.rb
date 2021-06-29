# Hash aka Dictionary
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_hash = {}
my_details = {'name' => 'Tiffany', 'favcolor' => 'blue'}

p my_details['favcolor']

# key = symbols :a=>1
another_hash = {a: 1, b: 2, c: 3}
p another_hash[:a]

p another_hash.keys
p another_hash.values

another_hash.each do |key, value|
  puts "The class for key is #{key.class} and the class for value is #{value.class}"
end

p another_hash

another_hash[:d] = "Tiffany"
another_hash[:c] = "Ruby"

p another_hash

another_hash.each { |some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}"}

p another_hash.select { |k, v| v.is_a?(String)}

another_hash.each { |k, v| another_hash.delete(k) if v.is_a?(String)}
p another_hash