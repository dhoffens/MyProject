#!/usr/bin/ruby -w

a = "Fizz"
b = "Buzz"
c = "FizzBuzz"
d = "Bang"
	
	for n in 1..100

	if n.to_s.start_with?("1") && n % 15 == 0
	    puts c+d
	    
	elsif n.to_s.start_with?("1") && n % 3 == 0
	    puts a+d
	    
	elsif n.to_s.start_with?("1") && n % 5 == 0
	    puts b+d
	
	elsif n % 15 == 0 
	    puts c
	
	elsif n % 5 == 0
		puts b

	elsif n % 3 == 0
		puts a

	elsif n.to_s.start_with?("1") 
	    puts d
	
	else
		puts n

	end
	
	end
