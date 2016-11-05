def permutations(string)
  
  a = string.split("").permutation.to_a
  
  b = []
  a.each { |x| b << x.join }
  
  b.uniq.sort

end