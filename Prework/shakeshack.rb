class MilkShake
	def initialize
		@base_price = 3
		@ingredients = [ ]
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end
	
	def price_of_milkshake
	total_price_of_milkshake = @base_price
	@ingredients.each do |ingredient|
		total_price_of_milkshake += ingredient.price
	end
	total_price_of_milkshake
end
end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

class ShackShop
	attr_reader :milkshakes
	def initialize
		@milkshakes = [ ]
	end
	
	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end
	
	def total_price
		price = 0
		@milkshakes.each do |milkshake|
			price += milkshake.price_of_milkshake
		end
		price
	end
end	

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

dans_milkshake = MilkShake.new
nutella = Ingredient.new("Nutella", 3)
cookie_dough = Ingredient.new("Cookie Dough", 2)
dans_milkshake.add_ingredient(nutella)
dans_milkshake.add_ingredient(cookie_dough)

nicks_milkshake = MilkShake.new
peanut_butter = Ingredient.new("Peanut Butter", 2.5)
peach = Ingredient.new("Peach", 2)
nicks_milkshake.add_ingredient(peach)
nicks_milkshake.add_ingredient(peanut_butter)

shopping_cart = ShackShop.new
shopping_cart.add_milkshake(nicks_milkshake)
shopping_cart.add_milkshake(nizars_milkshake)
shopping_cart.add_milkshake(dans_milkshake)

shopping_cart.total_price