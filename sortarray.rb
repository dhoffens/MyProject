a = "Have a nice day."

array = a.split(" ")

copy = array.sort {|x,y| x.upcase <=> y.upcase}

puts copy.to_s

