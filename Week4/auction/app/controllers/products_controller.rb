class ProductsController < ApplicationController

	def index

		# @user = User.all
		@products = Product.all
	end

	def new
		# @user = User.find_by(id: params[:id])
		@product = Product.new
	end

	def create 
		# user = User.find(params[:user_id])
		product = Product.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline])
		product.save

		redirect_to("/products")
	end

	def destroy
	end
end
