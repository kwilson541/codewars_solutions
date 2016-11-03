def domain_name(url)

domain = url.gsub!(/(http|https)(:\/\/)(www.)?/, "").split(".")

domain[0]

end