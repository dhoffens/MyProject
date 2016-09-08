Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'

  get '/contact', to: 'site#contact'

  get '/say_name/:name', to: 'site#say_name'

  get '/projects', to: 'projects#index', as: :projects

  get '/projects/:id', to: 'projects#show'
end
