def double_char(str)
  arr = str.split("")
  newstr = ""
  arr.each { |x| 
  newstr << "#{x}#{x}" }
  return newstr
end