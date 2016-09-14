Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'static_pages#home'

resources :products, only: [:index, :new, :create]

end
