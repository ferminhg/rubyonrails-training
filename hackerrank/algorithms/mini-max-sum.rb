#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
  max = 0
  min = arr.inject(0){|sum,x| sum + x}
  (0..(arr.length-1)).each { |position|
    value = arr.inject(0){|sum,x| sum + x} - arr[position]
    max = value if value > max
    min = value if value < min
  }
  puts "#{min} #{max}"
end

# arr = gets.rstrip.split(' ').map(&:to_i)
arr = [1,2,3,4,5]
miniMaxSum arr
