def isValidWalk(walk)
  n = walk.count('n')
  s = walk.count('s')
  e = walk.count('e')
  w = walk.count('w')

  if walk.size == 10 && n == s && w == e
   return true
  else
    return false
  end
end