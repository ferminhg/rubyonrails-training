# What is the minimum number of moves it takes for 
# to get from position  to position 

# return de movs needs to go (n, n)
def KnightL(a, b, n)
  p "#{a} #{b}"
end

def knightlOnAChessboard(n)
  (1...n).each { |i| (1...n).each { |j| KnightL(i, j, n)} }
end

n = 3
p knightlOnAChessboard n