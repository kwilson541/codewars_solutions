def find_2nd_smallest(arr)
 
	arr.select! { |x| x.is_a? Integer }

	a = arr.uniq.sort

	return a[1]
 
end