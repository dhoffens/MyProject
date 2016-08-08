require "date"

class ShoppingCart
	def initialize
		@items = [ ]
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end
	
	def price
	
	end
end

class Houseware < Item
	def price
		if @price > 100
			price = 0.95*@price
		else 
			price = @price
		end
	end
end

class Fruit < Item
	def price
		if Date.today.saturday?
			price = 0.9*@price
		elsif Date.today.sunday?
			price = 0.9*@price
		else
			price = @price
		end
	end
end

banana = Fruit.new("Banana", 10)
orange_juice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

puts banana.price