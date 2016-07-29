array = []

for n in 1..100 do

	result = ""
	
	if n.to_s.start_with?("1")
		result << "Bang"
	end
	
	if n % 3 == 0 
		result << "Fizz"
	end
	
	if n % 5 == 0 
		result << "Buzz"
	end
	
	if n % 15 == 0 
		result << "FizzBuzz"
	end

	unless (n%3==0) || (n%5==0) || (n%15==0) || (n.to_s.start_with?("1"))
		result = n
	end

array << result

end

puts array
