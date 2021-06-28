# Array is an ordered list of items
a = [1, 2, 3]
# Index starts at 0
puts a
print a  
p a 

# last item in array
puts a.last 

x = 1..100
puts x.class # Range

# COnverts range to an array
print x.to_a
print x.to_a.shuffle

y = (1..10).to_a 
print y.reverse 
print y
print y.reverse!
print y

print y.length  

# append
b = [1, 2, 3]
b << 4
b.unshift("Tiffany")
b.append("Tiffany")
print b

b.uniq!
print b

c = []
c.empty?

b.include?("Tiffany")

b.push("new item")
d = b.pop
print b

z = b.join(", ")
print z

z.split(", ")
print z

w = %w(my name is Tiffany)

for i in w
  print i 
end

# ruby preferred method
w.each do |word|
  print word + " "
end

w.each {|word| print word + " "}

v = (1..100).to_a.shuffle 
print v.select {|number| number.odd?}