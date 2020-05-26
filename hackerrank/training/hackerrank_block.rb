def call_block
  puts "Start of method."
  yield
  puts "End of method."
end 
call_block do 
  puts "I am inside call_block method."
end

def calculate(a,b)
  yield(a, b)
end

puts calculate(15, 10) {|a, b| a - b}   

def factorial
  yield
end

# n = gets.to_i
n = 4
factorial do 
  puts (1..n).reduce(:*)
end

def foo(a, b, my_proc)
  my_proc.call(a, b)
end

add = proc {|x, y| x + y}

puts foo(15, 10, add)


def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end


proc_square_number = proc {|x| x * x}
proc_sum_array     = proc {|x| x.reduce { |sum, n| sum + n } }
my_array = [1,2,3]

puts square_of_sum(my_array, proc_square_number, proc_sum_array)


def area (l, b)
  -> { l * b } 
end

x = 10.0; y = 20.0

area_rectangle = area(x, y).call
area_triangle = 0.5 * area(x, y).()

puts area_rectangle     #200.0
puts area_triangle      #100.0

area = ->(a, b) { a * b }

x = 10.0; y = 20.0

area_rectangle = area.(x, y)
area_triangle = 0.5 * area.call(x, y)

puts area_rectangle     #200.0
puts area_triangle      #100.0

# Write a lambda which takes an integer and square it
square      = ->(a) {a * a}

# Write a lambda which takes an integer and increment it by 1
plus_one    = ->(a) {a+1}

# Write a lambda which takes an integer and multiply it by 2
into_2      = ->(a) {a * 2}

# Write a lambda which takes two integers and adds them
adder       = ->(a, b) {a + b}

# Write a lambda which takes a hash and returns an array of hash values
values_only = ->(h) {h.values}

def plus_1(y)
  x = 100000
  y.call       #remembers the value of x = 1
end

x = 1
y = -> { x + 1 }
puts plus_1(y)  #2

def block_message_printer
  message = "Welcome to Block Message Printer"
  if block_given?
      puts message
  end
puts "But in this function/method message is :: #{message}"
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }

#####################################################################################

def proc_message_printer(my_proc)
  message = "Welcome to Proc Message Printer"
  my_proc.call              #Call my_proc
  puts "But in this function/method message is :: #{message}"
end


my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)
  
######################################################################################    
  
def lambda_message_printer(my_lambda)
  message = "Welcome to Lambda Message Printer"
  my_lambda.()              #Call my_lambda
  puts "But in this function/method message is :: #{message}"
end

my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)    
  
######################################################################################