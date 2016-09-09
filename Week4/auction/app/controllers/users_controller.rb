class UsersController < ApplicationController

	def index
	# show users 
		@users = User.order(created_at: :desc)
	end

	def show
	#display a single user from an id
		@user = User.find_by(id: params[:id])

		unless @user
			render 'No user exists...'
		end
	end

	def new
	# display form page for creating new user
		@new_user = User.new
	end

	def create
	# create a new user from params in form
		new_user = User.new(
			name: params[:user][:name],
			email: params[:user][:email])
		new_user.save

		redirect_to "/users/#{new_user.id}"
	end

	def destroy
	end

end
