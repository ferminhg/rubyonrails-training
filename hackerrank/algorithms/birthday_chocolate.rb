def birthday(s, d, m)
  (0 ... (s.length)).filter { |pos| 
    (s[pos, m].length == m && s[pos, m].sum == d)
  }.count
end

p birthday [1,2, 1, 3, 2], 3, 2
p birthday [2, 5, 1, 3, 4, 4, 3, 5, 1, 1, 2, 1, 4, 1, 3, 3, 4, 2, 1], 18, 7