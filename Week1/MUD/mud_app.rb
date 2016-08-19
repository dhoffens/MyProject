require_relative("lib/lobby.rb")
require_relative("lib/rooms.rb")

# require_relative("lib/room1.rb")
# require_relative("lib/room2.rb")
# require_relative("lib/room3.rb")
# require_relative("lib/room4.rb")
# require_relative("lib/room5.rb")
# require_relative("lib/actions.rb")

lobby = Lobby.new
first = Room1.new
second = Room2.new 
third = Room3.new
fourth = Room4.new
fifth = Room5.new
victory = Victory.new

lobby.enter

user_choice = gets.chomp
if user_choice == "yes"

puts "Use [N], [E], [S], [W] to explore the world around you."

first.describe

user_choice = gets.chomp

#while user_choice != ("N" || "E" || "W" || "S")

if user_choice == "N"
	second.describe
	user_choice = gets.chomp
# else
# 	puts "No...there's nothing there..."
# 	first.describe
# 	#loop back?
	if user_choice == "W"
		third.describe
		user_choice = gets.chomp
		if user_choice == "W"
			fourth.describe
			user_choice = gets.chomp
			if user_choice == "N"
				fifth.describe
				user_choice = gets.chomp
				if user_choice == "E"
					victory.describe
				else
					puts "That doesn't seem to be the way..."
					first.describe
					user_choice = gets.chomp
				end
			end
		end

	end
end

end