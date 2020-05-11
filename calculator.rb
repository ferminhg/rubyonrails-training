def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
  first_num.to_f / second_num.to_f
end

def substrac(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def add(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def mod(first_num, second_num)
  first_num.to_f % second_num.to_f
end

puts "Simple calculator"
20.times { print "-" }
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "What do you want to do?"
puts "1: multiply, 2: addition, 3: subtraction"
user_entry = gets.chomp

if user_entry.to_i == 1
  puts "multiply: #{multiply(num_1, num_2)}"
elsif user_entry.to_i == 2
  puts "addition: #{add(num_1, num_2)}"
elsif user_entry.to_i == 3
  puts "subtraction: #{substrac(num_1, num_2)}"
else
  puts "invalid operation"
end
