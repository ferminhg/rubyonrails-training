def divisibleSumPairs_0(n, k, ar)
  result = []
  (0 ..(ar.length-1)).each { |i| 
    (i+1..(ar.length-1)).each { |j|
      # p (ar[i] + ar[j]) % k == 0 
      # p [i ,j]
      result.append([ar[i], ar[j]]) if (ar[i] + ar[j]) % k == 0
      }
    }
  result.count
end

def divisibleSumPairs(n, k, ar)
  result = []
  (0 ..(ar.length-1)).each { |i| 
    (i+1..(ar.length-1)).select { |j|
      result.append([ar[i], ar[j]]) if (ar[i] + ar[j]) % k == 0
    }
  }
  result.count
end

result = divisibleSumPairs 6, 3, [1, 3, 2, 6, 1, 2]
p result