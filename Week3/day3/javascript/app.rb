class ColorCounter
	def count_colors(the_color, color_array)
		count = 0
		color_array.each do |temp_color|
			if temp_color == the_color
				count += 1
			end
		end
		count
	end
end

color_array = ["indigo", "teal", "lilac", "teal", "periwinkle", "black", "periwinkle", "baby blue", "teal"]

count_machine = ColorCounter.new

p count_machine.count_colors("indigo", color_array) == 1
p count_machine.count_colors("teal", color_array) == 3
p count_machine.count_colors("periwinkle", color_array) == 2
