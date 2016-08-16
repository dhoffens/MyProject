def solve_cipher(input)
	letters_array = []
	numbers_array = []
	shifted_numbers = []
	decrypted = []
	letters_array = input.split(//)
	letters_array.each do |x| 
		numbers_array << x.ord
	end
	numbers_array.each do |x|
		if (x-1)<65 || ((x-1)>90 && (x-1)<97) 
			shifted_numbers << (x+25)
		else
		shifted_numbers << (x-1)
		end
	end
	shifted_numbers.each do |x|
		decrypted << x.chr
	end
	puts decrypted.join
	if decrypted
	end
end

solve_cipher("ifmmp")