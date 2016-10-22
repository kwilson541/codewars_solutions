def duplicate_count(text)
  chars = text.downcase.split("")
  dups = Hash.new(0)
  chars.each { |x| dups.store(x, dups[x]+1) }
  dups.delete_if{ |key, value| value <= 1 }
  return dups.count
end