# app.rb
require "sinatra"
require 'sinatra/reloader'
require_relative("lib/password_checker.rb")

get "/" do
	erb :index
end

post "/verify" do
  email = params[:email]
  password = params[:password]

	new_account = PasswordChecker.new

	if new_account.check_password(email, password)
		"Success."
	else
		"You suck at following rules."
	end	

end