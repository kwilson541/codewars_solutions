def likes(names)
  if names.size == 0
    return "no one likes this"
  elsif names.size == 1
    return names[0] + " likes this"
  elsif names.size == 2
    return names[0] + " and " + names[1] + " like this"
  elsif names.size == 3
    return names[0] + ", " + names[1] + " and " + names[2] + " like this"
  elsif names.size >= 4
    return names[0] + ", " + names[1] + " and " + (names.size - 2).to_s + " others like this"
  end
end