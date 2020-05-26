def breakingRecords(scores)
  max = min = scores[0]
  breakMax = breakMin = 0
  scores.each{ |score| 
    if score > max
      breakMax += 1 
      max = score
    end 
    if score < min
      breakMin += 1
      min = score
    end 
  }
  [breakMax, breakMin]
end

p breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1])
p breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42])