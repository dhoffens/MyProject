def solve_cipher(input)
	array = []
	num = input.chars.map(&:ord)

	shift = 1
	26.times do |shift|
		array << num.map do |c|
			((c + shift) < 123 ? (c + shift) : (c + shift) - 26).chr
		end.join
	end

	array
end

puts solve_cipher("testing")

