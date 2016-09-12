# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concert1 = Concert.create!(artist: "Daft Punk", venue: "Electric Pickle", city: "Miami", date: Date.today.next_month, price: 100, description: "One more time!")
concert2 = Concert.create!(artist: "Claude VonStroke", venue: "Liv", city: "Miami Beach", date: Date.today.next_month, price: 50, description: "I can make a cake bum bum bum")
concert3 = Concert.create!(artist: "Metallica", venue: "The Warehouse", city: "Philadelphia", date: Date.today.next_week, price: 80, description: "Enter sandman")
concert4 = Concert.create!(artist: "Justin Martin", venue: "Story", city: "Miami Beach", date: Date.today.next_month, price: 60, description: "Got too drunk")
concert5 = Concert.create!(artist: "Zhu", venue: "Fillmore", city: "Miami Beach", date: Date.today.next_month, price: 70, description: "woah dude")