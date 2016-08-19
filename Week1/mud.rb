class Rooms  
  attr_accessor :room1,:room2,:room3,:room4,:room5 

  def room1
    user_choice = gets.chomp
    puts "..."
    puts "You are in a dark room..."
    puts "... ..."
    puts "You don't know how you got there. Your head is sore and you car barely see..."
    puts "..."
    puts "You start looking around the room. You see some broken furniture and class on the floor. There is broken glass scattered throughout the room and it smells of old rotting wood."
    puts "What do you do next?"

    if user_choice == "N"
      room2
      else 
        room1  
    end
  end

  def room2
    puts "..."
    puts "You are in a dark room..."
    puts "... ..."
    puts "You don't know how you got there. Your head is sore and you car barely see..."
    puts "..."
    puts "You start looking around the room. You see some broken furniture and class on the floor. There is broken glass scattered throughout the room and it smells of old rotting wood."
    puts "What do you do next?"

    if user_choice == "W"
      room3
    else
      room2
    end
  end

  def room3
    puts "..."
    puts "You are in a dark room..."
    puts "... ..."
    puts "You don't know how you got there. Your head is sore and you car barely see..."
    puts "..."
    puts "You start looking around the room. You see some broken furniture and class on the floor. There is broken glass scattered throughout the room and it smells of old rotting wood."
    puts "What do you do next?"

    if user_choice == "N"
      room4
    else
      room3
    end
  end

  def room4
    puts "..."
    puts "You are in a dark room..."
    puts "... ..."
    puts "You don't know how you got there. Your head is sore and you car barely see..."
    puts "..."
    puts "You start looking around the room. You see some broken furniture and class on the floor. There is broken glass scattered throughout the room and it smells of old rotting wood."
    puts "What do you do next?"

    if user_choice == "E"
      room5
    else
      room4
    end
  end

  def room5
    puts "..."
    puts "You are in a dark room..."
    puts "... ..."
    puts "You don't know how you got there. Your head is sore and you car barely see..."
    puts "..."
    puts "You start looking around the room. You see some broken furniture and class on the floor. There is broken glass scattered throughout the room and it smells of old rotting wood."
    puts "What do you do next?"

    if user_choice == "N"
      victory
    else
      room5
    end
  end

end

class Actions

  def death
    puts "..."
    puts "Oh no..."
    puts "YOU MADE THE WRONG CHOICE!"
    puts "YOU'RE DEAD!"
    puts "......"
    puts "......"
    puts "......"
    puts "......"
    puts "......"
    puts "Play again?"

    if user_choice == "Yes"
      room1
    else
      goodbye
    end
  end

  def goodbye
    puts "Thanks for playing!"
    puts "..."
    puts "Get back to work."
  end

end

 #  def enter_room( room )
 #    describe_room
 #  end

	# def describe_room( room )
 #  		puts room.description
	# end

# /---------------------------------------------------------
#  ------------------- APPLICATION CODE --------------------
#  ---------------------------------------------------------/

puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts " WELCOME TO THE IRON DUNGEON "
puts "-" * 50
puts "-" * 50
puts "-" * 50
puts "-" * 50

user_choice = ""

while user_choice != "exit"
  
  puts "..."
  puts "..."
  puts "Use [N], [E], [S], [W] to navigate North, East, South, or West. If you see an item, use [item] to interact with it."
  puts "Do you wish to continue? [Yes] or [No]"

  user_choice = gets.chomp

  puts ""

  if user_choice == "Yes"
  
    puts "You walk towards the door. It is a large Oak door that seems to weigh a ton. The doorknob is rusty and looks as if it hasn't been opened in years. You reach for it and turn the knob."
    puts "..."
    puts "..."
    
    Rooms.room1
  
  else
    puts "Okay, goodbye."
  end
end