# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sand1 = Sandwich.create!(name: "turkey", bread_type: "italian")
sand2 = Sandwich.create!(name: "ham", bread_type: "wheat")
sand3 = Sandwich.create!(name: "ruben", bread_type: "rye")

ing1 = Ingredient.create!(name: "cheese", calories: 80)
ing2 = Ingredient.create!(name: "tomatoes", calories: 30)
ing3 = Ingredient.create!(name: "olives", calories: 50)



sand1.ingredients.push(ing1)
sand1.ingredients.push(ing2)
sand1.ingredients.push(ing3)

