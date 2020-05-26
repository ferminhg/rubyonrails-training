#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
  positive = arr.select{ |x| x > 0}.length.to_f
  negative = arr.select{ |x| x < 0}.length.to_f
  zero     = arr.select{ |x| x == 0}.length.to_f
  puts format('%<num>0.6f', num: (positive/ arr.length)) 
  puts format('%<num>0.6f', num: (negative/ arr.length)) 
  puts format('%<num>0.6f', num: (zero/ arr.length)) 
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)
p arr
plusMinus arr