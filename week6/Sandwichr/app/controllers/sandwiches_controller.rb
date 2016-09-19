class SandwichesController < ApplicationController

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		ingredients = sandwich.ingredients
		unless sandwich
			render json: {error: "sandwich not found"},
			status: 404
			return
		end

		render json: sandwich.to_json(:include => :ingredients)
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "cant update that sandwich"},
			status: 404
			return
		end
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "cant delete something that doesnt exist..."},
			status: 404
			return
		end
		sandwich.destroy
		render json: sandwich
	end

	def add_ingredient 
		sandwich = Sandwich.find_by(id: params[:sandwich_id])
		ingredient = Ingredient.find_by(id: params[:id])
		sandwich.ingredients.push(ingredient)
		sandwich.total_calories += ingredient.calories
		sandwich.save
		render json: sandwich.to_json(:include => :ingredients)
	end

	private

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end

end