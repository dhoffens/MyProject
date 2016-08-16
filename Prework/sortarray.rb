a = "Have, ,a nice day."

punc = a.gsub(/[.?!,;]/, "")

array = punc.split(" ")

copy = array.sort {|x,y| x.upcase <=> y.upcase}

puts copy.to_s

