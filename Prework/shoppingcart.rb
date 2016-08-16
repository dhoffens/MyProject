require "date"

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end
	
	def price
		price = @price
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

class ShoppingCart
	attr_accessor :items
	def initialize
		@items = [ ]
	end
	
	def add_item(item)
		@items.push(item)	
	end
	
	def checkout
		price = 0
		@items.each do |item|
			price += item.price
		end
		if @items.count>5
			price = (price*0.9)
		else
			price = price
		end
	end
end

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

dans_cart = ShoppingCart.new
dans_cart.add_item(banana)
dans_cart.add_item(orange_juice)
dans_cart.add_item(rice)

dans_cart.checkout