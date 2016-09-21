class UsersController < ApplicationController

	def home
		@users = User.all
		render :home
	end

	def show
		@user = User.find(params[:id])
		render :show
	end
end
