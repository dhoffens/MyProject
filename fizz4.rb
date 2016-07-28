#!/usr/bin/ruby -w

a = "Fizz"
b = "Buzz"
c = "FizzBuzz"
d = "Bang"
	
	case n
	for n in 1..100
		
	when n.to_s.start_with?("1") && n % 15 == 0
	then puts c+d
	
	when n.to_s.start_with?("1") && n % 3 == 0
	then puts a+d

	when n.to_s.start_with?("1") && n % 5 == 0
	then puts b+d
	
	when n % 15 == 0 
	then puts c

	when n % 5 == 0
	then puts b

	when n % 3 == 0
	then puts a


	when n.to_s.start_with?("1") 
	then puts d
	
	else
		puts n
	end

	end
