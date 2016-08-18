require_relative("lib/payable.rb")
require_relative("lib/caffeine_consumer.rb")
require_relative("lib/programmer.rb")
require_relative("lib/designer.rb")


nancy = Programmer.new

john = Designer.new

nancy.program

puts "-" * 30

john.design_things

puts "-" * 30