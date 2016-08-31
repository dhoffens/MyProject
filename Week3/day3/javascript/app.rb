require_relative("./lib/color_counter.rb")

color_array = ["indigo", "teal", "lilac", "teal", "periwinkle", "black", "periwinkle", "baby blue", "teal"]

count_machine = ColorCounter.new

p count_machine.count_colors("indigo", color_array) == 1
p count_machine.count_colors("teal", color_array) == 3
p count_machine.count_colors("periwinkle", color_array) == 2
