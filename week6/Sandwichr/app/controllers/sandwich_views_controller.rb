class SandwichViewsController < ApplicationController

	def index
		@sandwich = Sandwich.all
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = @sandwich.ingredients
	end
end
