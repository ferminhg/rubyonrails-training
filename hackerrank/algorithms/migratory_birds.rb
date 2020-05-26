def migratoryBirds(arr)
  hash = {}
  arr.each{ |bird| 
    if !hash.key? bird
      hash[bird] = arr.select {|b| b==bird}.count 
    end
  }
  hash.select {|k,v| v == hash.values.max }.sort_by {|k, v| k}[0][0]
end

arr = [1, 4, 4, 4, 5, 3, 3]
p migratoryBirds arr