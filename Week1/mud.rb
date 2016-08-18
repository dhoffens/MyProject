class Room
	attr_reader :name, :description, :exit
	
	def initialize(name, description, exit)
	    @name = name
	    @description = description
	    @exit = exit
  	end
end

	def describe_room( room )
  		puts room.description
	end

# ----------

@rooms = [
  Room.new("room1", "a dimly light room", "N"),
  Room.new("room2", "a long corridor with a dining table", "W"),
  Room.new("room3", "an outdoor garden fenced in with trees", "W"),
  Room.new("room4", "a dungeon filled with armor and weapons", "N"),
  Room.new("room5", "a treasure room with gold", "n/a")
]


# /---------------------------------------------------------
#  ------------------- APPLICATION CODE --------------------
#  ---------------------------------------------------------/

puts "..."
puts "..."
puts "..."
puts "You are in a dark room."
puts "You don't know how you got there. Your head is sore and it is hard to see."
puts "..."
puts "The room is dimly lit by a candle that is soon to burn out. Through the dim light you can see a door to the north."

user_input = nil

while user_input != "exit"
  puts ""
  puts "Use [N], [E], [S], [W] to navigate North, East, South, or West. If you see an item, use [item] to interact with it."
  puts "What is your selection?"
  user_input = gets.chomp

  puts ""

  if user_input == "N"
    puts "You walk towards the door. It is a large Oak door that seems to weigh a ton. The doorknob is rusty and looks as if it hasn't been opened in years. You reach for it and turn the knob."
    puts "..."
    puts "..."
    puts "- [capacity] to see highest capacity first"
    puts "- [city] to filter by city"
    puts "- [name] to name your own price"

  elsif user_input == "exit"
    puts "Goodbye."

  elsif user_input == "list" || user_input == "lowest"
    lowest_first = homes.sort { |home_a, home_b| home_a.price <=> home_b.price }
      #   |
      #   --------------
      #                |
      #                v
    print_homes( lowest_first )

  elsif user_input == "highest"
    highest_first = homes.sort { |home_a, home_b| home_b.price <=> home_a.price }
      #    |
      #    --------------
      #                 |
      #                 v
    print_homes( highest_first )

  elsif user_input == "capacity"
    by_capacity = homes.sort { |home_a, home_b| home_b.capacity <=> home_a.capacity }
      #  |
      #  --------------
      #               |
      #               v
    print_homes( by_capacity )

  elsif user_input == "city"
    puts "Enter the name of a city:"
    user_city = gets.chomp.downcase

    puts ""

    city_homes = homes.select { |the_home| the_home.city.downcase == user_city }
      # |
      # --------------
      #              |
      #              v
    print_homes( city_homes )

  elsif user_input == "name"
    puts "Enter your desired price:"
    user_price = gets.chomp.to_f

    puts ""

    matched_home = homes.find { |the_home| the_home.price == user_price }

    if matched_home == nil
      puts "No homes available for $#{user_price} a night."
    else
      # Make an array of one so we can reuse the existing method
      matches = [matched_home]

      print_homes( matches )
    end

  else
    puts "No understand. Beep boop."
  end
end
