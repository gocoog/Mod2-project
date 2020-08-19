Rails.application.routes.draw do
  resources :reasons

  resources :requests
  resources :managers
  resources :employees

  get '/home', to: 'home#welcome'

  post '/requests/new', to: 'requests#new'

  get '/login', to: 'auth#login'
  post '/login', to: 'auth#verify'
  post '/logout', to: 'auth#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
