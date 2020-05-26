def getTotalX(a, b)
  (a.min .. b.min).select{ 
    |x| a.all?{|y| x % y == 0} && b.all?{|y| y % x == 0} 
  }.count
end

# p getTotalX([2, 6], [24, 36])
p getTotalX([2, 4], [16, 32, 96])