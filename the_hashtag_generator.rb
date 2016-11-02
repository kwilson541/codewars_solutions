def generateHashtag(str)

if str.empty?
	return false
end

x = str.split(" ").each{|word| word.capitalize!}.unshift("#").join

  if x.length > 140
    return false
  else
    return x
  end

end