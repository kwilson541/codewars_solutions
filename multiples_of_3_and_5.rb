def solution(number)

  num_array = [*1..number-1]

  multiples = []
 
  num_array.each { | i | 
   multiples << i if (i % 3 == 0) || (i % 5 == 0)
  }
 
 total = 0
 
  multiples.each { | x |
    total += x
    }
    
 total
 
end