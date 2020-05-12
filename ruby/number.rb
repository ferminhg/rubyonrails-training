puts 1 + 2

x = 5
y = 10
puts (y / x).to_f

# string mult by int
puts "5" * 10
puts "-" * 20

puts "I'm a line"
puts "-" * 20
puts "new line"

20.times { print "-" }
#
20.times { puts rand }

########
puts "Simple calculator"
25.times { print "-" }
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp

puts "mult: #{num_1.to_i * num_2.to_i}"
puts "div: #{num_1.to_f / num_2.to_f}"
puts "add: #{num_1.to_i + num_2.to_i}"
puts "sub: #{num_1.to_i - num_2.to_i}"
puts "mod: #{num_1.to_f % num_2.to_f}"
