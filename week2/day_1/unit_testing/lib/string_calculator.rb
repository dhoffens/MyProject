class StringCalculator
	# attr_accessor :x, :y

	# def initialize
	# 	# @x = x
	# 	# @y = y
	# end

	def add(string)
		@cleaned = string.gsub(/\$/, ',')
		#p @cleaned
		@numbers = @cleaned.split(",")  
		#p @numbers

		@numbers[0].to_i + @numbers[1].to_i + @numbers[2].to_i + @numbers[3].to_i
	end
end
