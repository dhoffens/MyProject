# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ironhack = Project.create!(name: 'Ironhack', description: 'Coding school teching RoR, JS, HTML, CSS')
Project.create!(name: 'Time Tracking App')
re = Project.create!(name: 'Recipes', description: 'Track my favorite recipes')
Project.create!(name: 'Sports', description: 'Track my favorite teams')
Project.create!(name: 'Countries', description: 'Track my favorite countries')
Project.create!(name: 'Languages', description: 'Track the best languages')
Project.create!(name: 'Tacos', description: 'Track my favorite tacos')
Project.create!(name: 'Spaghetti', description: 'Track the best pastas')
Project.create!(name: 'Dogs', description: 'Track my favorite dogs')
Project.create!(name: 'People', description: 'Track my favorite people')

ironhack.time_entries.create(hours: 1, minutes: 32, date: Time.now - 1.month)
ironhack.time_entries.create(hours: 2, minutes: 48, date: Time.now - 5.day)
ironhack.time_entries.create(hours: 3, minutes: 32, date: Time.now - 10.day)
re.time_entries.create(hours: 1, minutes: 32, date: Time.now )
re.time_entries.create(hours: 2, minutes: 32, date: Time.now )
re.time_entries.create(hours: 3, minutes: 32, date: Time.now )

