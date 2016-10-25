def format_duration(seconds)

if seconds == 0
	return "now"
end

y, r = seconds.divmod(31536000)
d, r_2 = r.divmod(86400)
h, r_3 = r_2.divmod(3600)
m, s = r_3.divmod(60)

duration = []

if y == 1; years = "1 year"; duration << years
elsif y != 0; years = "#{y} years"; duration << years
end

if d == 1; days = "1 day"; duration << days
elsif d != 0; days = "#{d} days"; duration << days
end

if h == 1; hours = "1 hour"; duration << hours
elsif h != 0; hours = "#{h} hours"; duration << hours
end

if m == 1; minutes = "1 minute"; duration << minutes
elsif m != 0; minutes = "#{m} minutes"; duration << minutes
end

if s == 1; seconds = "1 second"; duration << seconds
elsif s != 0; seconds = "#{s} seconds"; duration << seconds
end

if duration.length == 1
	return duration[0]
elsif duration.length == 2
	return duration.join(' and ')
elsif duration.length > 2
	return duration[0..-2].join(', ') + " and " + duration[-1]
end

end