# fizzbuzz class

class Scenario
	
	def fizzbuzz(input)
		if input % 15 == 0 
			"fizzbuzz"
		elsif input % 5 == 0
			"buzz"
		elsif input % 3 == 0
			"fizz"
		else 
			input
		end
	end
end
