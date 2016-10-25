def deadAntCount(ants)
  
	ants = ants.to_s.gsub(/ant|\W/, '')

	bits = Hash.new(0)
  		ants.each_char { |x| bits[x] += 1 }

	if bits.empty?
 		return 0
	else
  		return bits.values.max
	end
  
end