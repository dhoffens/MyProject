# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name: 'Michael Smith', email: 'mike@email.com')
user2 = User.create(name: 'Steph Summers', email: 'steph@email.com')
user3 = User.create(name: 'John Will', email: 'john@email.com')
user4 = User.create(name: 'Daymon Green', email: 'daymon@email.com')
user5 = User.create(name: 'Linda Walker', email: 'linda@email.com')

product1 = Product.create(title: 'Radio', description: 'blast some tunes', deadline: Date.today + 1.month)
product2 = Product.create(title: 'Skateboard', description: 'roll on home', deadline: Date.today + 1.day)
product3 = Product.create(title: 'Bed', description: 'Ew a used bed...', deadline: Date.today + 2.days)
product4 = Product.create(title: 'Car', description: 'Vroom vroom', deadline: Date.today + 5.days)
product5 = Product.create(title: 'Computer', description: 'CamBook PRO!', deadline: Date.today)