def solution(input, markers)

lines = input.split("\n")

lines.each { |x|
  x.gsub!(/[#{markers.join}].+/, "").to_s.strip!
  }

return lines.join("\n")

end

puts solution("Apples, pears # grapes \npotatoes ! nom\nchocolate", ["#", "!"])