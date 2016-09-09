Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'site#home'

  get '/users', to: 'users#index', as: :user

  get '/products', to: 'products#index', as: :product

  get '/products/new', to: 'products#new', as: :product_new

  post '/products', to: 'products#create'
end
