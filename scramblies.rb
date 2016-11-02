def scramble(s1,s2)

  s1.gsub!(/[^#{s2}]/, "")
  
  h1 = Hash.new(0)

  s1.chars.each { |x| h1[x] += 1 }
  s2.chars.each { |x| h1[x] -= 1 }

  !h1.values.any? { |x| x < 0 }

end