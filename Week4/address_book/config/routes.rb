Rails.application.routes.draw do

	# get '/', to: 'contacts#index'

	get '/new', to: 'contacts#new', as: :new

	post '/contacts', to: 'contacts#create'

	get '/contacts', to: 'contacts#index'
end
