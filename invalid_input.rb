def get_count(words=" ")
  vowels = 0
  consonants = 0
  
  if words.is_a?(String)
    letters = words.downcase
    vowels = letters.scan(/[aeoui]/).count
    consonants = letters.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end
  
  return { "vowels" => vowels, "consonants" => consonants }
end