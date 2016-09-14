# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!(name: "Hemp", price: 60, description: "Great tasting Hemp Hearts have a slightly nutty taste, similar to a sunflower seed or pine nut.", image: "http://static1.squarespace.com/static/53bdd66be4b0817cc87aaf13/t/53e6bc99e4b09aec91758466/1407630502058/Hemp.jpg?format=1500w")
Product.create!(name: "Moonshine", price: 100, description: "Now here’s a volume you can really drink to!  Something’s brewing in these pages, and it’s moonshine—a word that evokes fascination, curiosity, and a warm sense of nostalgia.", image: "http://moonshinerecipe.org/wp-content/uploads/2014/01/MoonshineJug.jpg")
Product.create!(name: "Fried Chicken", price: 10, description: "Fried chicken is comfort food at its finest. Served alongside a biscuit, atop waffles, or just on its own, fried chicken is one of the most universally loved foods around.", image: "http://www4.theoakkroom.com/wp-content/uploads/2015/03/fried-chicken.jpg")
Product.create!(name: "Shotgun", price: 600, description: "Beretta® designed the A300 Outlander® Semi-Auto Shotgun, coated with TrueTimber® DRT™ Camo, specifically for waterfowl hunting. The TrueTimber DRT (Dead Right There) coating reduces corrosion inherent to goose and duck hunting conditions, and blends in with swamps and wetlands with a brown/gray contrast, yet has enough hazy yellow coloration for cattails and CRP fields.", image: "http://www.benelliusa.com/sites/default/files/styles/firearm_1004/public/originals/product-firearms/828u-nickel-silo_1.png?itok=OVJQ0pQk")
Product.create!(name: "Nizar's Pizza", price: 20, description: "Nizar's famous imaginary perfect pizza.", image: "https://media.giphy.com/media/LX3Q9vcjwhKYE/giphy.gif")
