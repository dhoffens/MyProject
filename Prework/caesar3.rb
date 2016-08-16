def solve_cipher(input)
	shift = -3
	letters_array = []
	numbers_array = []
	shifted_numbers = []
	decrypted = []
	letters_array = input.split(//)
	letters_array.each do |x| 
		numbers_array << x.ord
	end
	numbers_array.each do |x|
		if (x+shift)<65 || ((x+shift)>90 && (x+shift)<97) 
			shifted_numbers << (x+25)
		else
		shifted_numbers << (x+shift)
		end
	end
	shifted_numbers.each do |x|
		decrypted << x.chr
	end
	puts decrypted.join.gsub(/9/, ' ')
end

solve_cipher("p| uhdo qdph lv grqdog gxfn")