def autocorrect(input)
  
  # \b = word boundry
  # + = recurring chars
  # i = case insensitive
  
  input.gsub(/\b(you+|u)\b/i, 'your sister')
  
end