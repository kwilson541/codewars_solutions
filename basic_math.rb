def calculate(str)
  
  str.gsub!(/(plus)/, "+")
  str.gsub!(/(minus)/, "-")
  eval(str).to_s
  
end