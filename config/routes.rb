Rails.application.routes.draw do
  get '/signup', to: "users#new" # note: '/signup' = signup_path
  post '/users', to: "users#create"
  
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :users, except: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
