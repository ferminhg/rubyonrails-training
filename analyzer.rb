puts "Enter your first name"
first_name = gets.chomp
puts "Enter your last name"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"
puts "Your full name si #{full_name}"
puts "Your full name si #{full_name.reverse}"
full_name_len = full_name.gsub(" ", "").length
puts "Your name has #{full_name_len} character in it"