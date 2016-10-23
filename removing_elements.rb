def remove_every_other(arr)
new_arr = []
  arr.each_with_index { |item, index|
    if index % 2 == 0
      new_arr << item
    end
    }
  new_arr
end