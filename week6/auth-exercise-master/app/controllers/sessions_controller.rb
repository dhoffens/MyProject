class SessionsController < ApplicationController

	# login form
	def new
	end

	# to login (create a session)
	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to '/login'
		end
	end

	# to logout (delete a session)
	def destroy
		session.clear
		redirect_to '/'
	end
end
