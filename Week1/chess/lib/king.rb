# lib/King.rb

class King
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end	

	def can_move?(final_x, final_y)
	
		if (@x - final_x).abs <= 1 && (@y-final_y).abs <= 1
			"yes"
		else
			"no"
		end
	end
end
