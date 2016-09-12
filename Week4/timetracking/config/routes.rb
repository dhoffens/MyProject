Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "site#home"
  
  resources :projects do
    resources :time_entries
  end
end
