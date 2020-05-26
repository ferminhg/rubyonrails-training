def countApplesAndOranges(s, t, a, b, apples, oranges)
  trees = {
    :apples => [apples, a],
    :oranges => [oranges, b],
  }
  trees.each{|k, v| p v[0].select{|x| (x + v[1]).between?(s, t)}.count}
  # p  apples.select{|x| (x + a).between?(s, t)}.count
  # p oranges.select{|x| (x + b).between?(s, t)}.count
end

countApplesAndOranges(7, 11, 5, 15, [-2, 2, 1], [5, -6])
countApplesAndOranges(7, 10, 4, 12, [2, 3, -4], [3, -2, -4])