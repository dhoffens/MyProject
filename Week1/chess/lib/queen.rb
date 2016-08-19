# lib/queen.rb

class Queen
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end	

	def can_move?(final_x, final_y)
	
		if (final_x - @x).abs == (final_y - @y).abs || ((final_x - @x) == 0 || (final_y - @y) == 0)
			"yes"
		else
			"no"
		end
	end
end
