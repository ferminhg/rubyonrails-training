#!/bin/ruby

require 'json'
require 'stringio'

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
  max_value = ar.max 
  ar.count {|x| x == max_value }
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# ar_count = gets.to_i

# ar = gets.rstrip.split(' ').map(&:to_i)
ar = [3, 2, 1, 3]
ar = [4, 1, 1, 3]
result = birthdayCakeCandles ar
p result
