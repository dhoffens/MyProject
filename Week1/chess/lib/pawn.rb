# lib/Pawn.rb

class Pawn
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end	

	def can_move?(final_x, final_y)
	
		if (final_x - @x == 0) && (((final_y - @y).abs == 1) || ((final_y - @y).abs == 2)) 
			"yes"
		else
			"no"
		end
	end
end
