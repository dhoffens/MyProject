#server.rb

require "sinatra"

get "/" do
	erb :home
end

get "/company" do
	erb :company
end

get "/about" do
	erb :about
end

get "/pizza" do 
	@pizza_ingredients = [
		"Cheese", "Dough", "Tomato Sauce", "Mushrooms", "Pepperoni", "Pineapple"
	]
	erb :pizza
end

users = [
	{ :username => "starwars", :name => "Star Wars", :bio => "The official bio of Star Wars on Twitter.", :avatar => "/starwars.jpg" }
]

get "/users/:username" do
	@user_name_string = params[:username]

	@the_user = users.find { |the_user| the_user[:username] == @user_name_string }

	if @the_user == nil
		erb :no_user
	else
		erb :user_profile
	end
end