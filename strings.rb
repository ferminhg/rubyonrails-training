sentence = "My dog name is Mora"

# string concatenation
p sentence
first_name = "Fermin"
last_name = "Hdez"
puts first_name + " " + last_name

#string interpolation
puts "My first name #{first_name} is and my last name is #{last_name}"

full_name = "#{first_name} #{last_name}"

#Methods, what class
p full_name.class
p 0.class
#p first_name.methods
p full_name.bytes
p full_name.length
p full_name.reverse
p full_name.empty?
p "".nil?
p nil.nil?

sentence = "Welcome to the jungle"
sentence = sentence.sub("the jungle", "utopia")
p sentence

#common methods

#variable assigmente
new_first_name = first_name
first_name = "Lucia"
p new_first_name
p first_name

#escaping
puts "wopwop \n wopwop \n wopwop"
