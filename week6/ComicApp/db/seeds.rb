# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
clark, tony, rick = User.create!([
	{ name: "Clark Kent", email: "clark@gmail.com", password: "ironhack", password_confirmation: "ironhack" },
	{ name: "Tony Stark", email: "tony@gmail.com", password: "ironhack", password_confirmation: "ironhack" },
	{ name: "Rick Grimes", email: "rick@gmail.com", password: "ironhack", password_confirmation: "ironhack" },
	])	

clark.comics.create!([
	{ title: "Watchmen", publisher: "Vertigo" },
	{ title: "Walking Dead", publisher: "Planeta" },
	])

rick.comics.create!([
	{ title: "V for Vendetta", publisher: "Vertigo" },
	{ title: "300", publisher: "Norma" },
	])
	
	
