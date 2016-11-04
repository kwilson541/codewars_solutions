def score( dice )

	x = dice.sort.join("")

	scores = { "111" => 1000, "666" => 600, "555" => 500, "444" => 400, "333" => 300,
    	  "222" => 200, "1" => 100, "5" => 50 }

	total = []

	scores.each { |key, value| 
    	while x.include?(key)
      		total << value
      		x.sub!(key, "")
    	end
    }

	return total.inject(0, :+)

end