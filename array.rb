# arrays
a = [1, 2, 2, 3, 4, 5, 6, 7, 8]
p a
p a.last

x = 1..100
p x.class
# use ! is to muttate
p x.to_a.shuffle!
z = x.to_a.shuffle!
p z

# ranges
x = (1..10).to_a
p x.reverse!
p x

x = "a".."z"
p x.to_a.shuffle
p x.to_a.length

# add items
a << 10
p a
p a.first
a.unshift("fermin")
a.append("fermin")
a.uniq!
p a
p a.empty?
p [].empty?
p a.include?("fermin")

p a.push("new")
p a.pop()
p b = a.join(", ")
p b.split(", ")

x = %w(my name is fermin and i'm testing ruby)
p x

for i in x
  puts i
end
# equivalent
x.each { |word| puts word }
p (1..25).to_a.select { |number| number.odd? }
