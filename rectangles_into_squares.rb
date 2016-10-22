def sqInRect(lng, wdth)
squares = Array.new

	if lng == wdth
		return nil
	else

		while lng > 0 && wdth > 0
  			if lng > wdth
    		lng = lng - wdth
    		squares.push(wdth)
  		else
    		wdth = wdth - lng
    		squares.push(lng)
  		end
	end
end

return squares

end
