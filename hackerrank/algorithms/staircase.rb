#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  while level <= n
    blanks = ' ' * (n-level)
    slash = '#' * (level)
    puts "#{blanks}#{slash}"
    level += 1
  end
end

def staircase(n)
  (1..n).each { |level| puts "#{' ' * (n-level)}#{ '#' * (level)}" }
end

# n = gets.to_i
n = 10
staircase n
