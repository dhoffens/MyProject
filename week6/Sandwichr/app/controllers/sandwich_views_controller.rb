class SandwichViewsController < ApplicationController

before_action :authenticate_user!

	def home
		render :home
	end

	def index
		@sandwich = Sandwich.all
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = @sandwich.ingredients
		@all_ing = Ingredient.all
	end
end
