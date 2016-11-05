def split_without_loss(str, split_p)

a = split_p.gsub(/(\|)/, '')

b = str.gsub!(/(#{a})/, "#{split_p}").split("|")

b.select! { |x| x != "" }

return b

end