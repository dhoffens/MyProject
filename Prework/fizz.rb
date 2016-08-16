#!/usr/bin/ruby -w

a = "Fizz"
b = "Buzz"
c = "FizzBuzz"
d = "Bang"
	
	for n in 1..100

	if n.to_s.start_with?("1") && n % 15 == 0
	    result = result + c+d
	end
	    
	if n.to_s.start_with?("1") && n % 3 == 0
	    result = result + a+d
	end

	if n.to_s.start_with?("1") && n % 5 == 0
	    result = result+ b+d
	end
	
	if n % 15 == 0 
	    result = c
	end

	if n % 5 == 0
		result = b
	end

	if n % 3 == 0
		result = a
	end

	if n.to_s.start_with?("1") 
	    result = result + d
	
	else
		result = n

	end
	
	puts result

	end
