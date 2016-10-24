def spinWords(string)
  string = string.split(" ")
  string.each { |x|
    if x.length >= 5
    x.reverse!
    end
    }
  string.join(" ")
end