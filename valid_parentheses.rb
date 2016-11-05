def valid_parentheses(string)
  string.gsub!(/[^()]/, "")
  
  return false if string.length.odd?
  return true if string.empty?

  loop {
  	sub_string = string.gsub("()", "")
  	return true if sub_string.empty?
  	return false if sub_string == string
  	string = sub_string
  } 
  
end