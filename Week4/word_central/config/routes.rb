Rails.application.routes.draw do
	get '/', to: 'site#home', as: :home

	get '/text_inspections/new', to: 'text_inspections#new', as: :new

	post '/text_inspections', to: 'text_inspections#create'
end
