Rails.application.routes.draw do
  resources :sandwiches, except: [:new, :edit] do
  	resources :ingredients, except: [:new, :edit] 
  end

  post '/sandwiches/:sandwich_id/ingredients/add/:id', to: 'sandwiches#add_ingredient'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
