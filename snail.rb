def snail(array)
  
  numbers = []  
  
  while array.length > 0
    array.shift.each { |x| numbers << x }
    array.each { |x| numbers << x.pop} if array.length >= 1
    array.pop.reverse_each { |x| numbers << x } if array.length >= 1
    array.reverse_each { |x| numbers << x.shift } if array.length >= 1
  end

return numbers
  
end