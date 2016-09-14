class ProductsController < ApplicationController

	def index
		@products_array = Product.all
	end

	def new
		@new_product = Product.new
	end

	def create
		product = Product.new(product_params)

		if product.save
			redirect_to products_path
		else
			render :new
		end
	end


	private

	def product_params 
		params.require(:product).permit(:name, :price, :image, :description)
	end
end

