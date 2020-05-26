# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
  (1..10000).each { |jump|
    x1 += v1
    x2 += v2
    return "YES" if x1 == x2 
    return "NO" if x2 > x1 && v2 > v1 
  }
  return "NO"
end


p kangaroo(0, 3, 4, 2)
p kangaroo(0, 2, 5, 2)