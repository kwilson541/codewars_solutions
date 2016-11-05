def find_longest(a, b)

	if a.empty? && b.empty?
		return 0
	elsif b.empty?
  		return a.length
	elsif a.empty?
 		return b.length
	end

	a_arr = a.split("")
	b_arr = b.split("")

	@markers = a_arr.select { |x| b_arr.include?(x) }.join.squeeze

	if @markers.empty?
		return (a + b).length
	end

	c = substrings(a + b)
	d = substrings(b + a)

	if c.empty?
		return 0
	end

	c = c.max_by(&:length).length
	d = d.max_by(&:length).length

	if c > d || c == d
 		return c
	else
		return d
	end
  
end

def substrings(string)

	new_string = ""
	array = []

	(string).chars.each { |x| if @markers.chars.include?(x) 
			array << new_string
			new_string = ""
		else
			new_string << x
		end
		}

	return array

end

