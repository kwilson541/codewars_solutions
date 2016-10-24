def goodVsEvil(good, evil)
good_values = [1, 2, 3, 3, 4, 10]
evil_values = [1, 2, 2, 2, 3, 5, 10]

good = good.split(' ').map(&:to_i)
evil = evil.split(' ').map(&:to_i)

good_army = 0
evil_army = 0

good.zip(good_values).map { | x, y |
  good_army += x * y
  }

evil.zip(evil_values).map { | x, y |
  evil_army += x * y
  }
  
  
  if good_army > evil_army
    return "Battle Result: Good triumphs over Evil"
  elsif evil_army > good_army
    return "Battle Result: Evil eradicates all trace of Good"
  else
    return "Battle Result: No victor on this battle field"
  end

end