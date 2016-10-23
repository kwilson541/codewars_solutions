def triple_double(num1,num2)
  num1 = num1.to_s.split('')
  num2 = num2.to_s.split('')
  
  x = false
  y = false
  
  num1.each_cons(3) { | a, b, c |
    x = true if a == b && a == c 
  }
  
  num2.each_cons(2) { | a, b |
    y = true if a == b
  }
  
  if x == true && y == true
    return 1
  else
    return 0
  end
  
end