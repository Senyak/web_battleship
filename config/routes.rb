Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get '/register', to: "register#new"
  post '/register', to: "register#create"

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'

  get '/logout', to: 'login#destroy'

  get '/playerslist', to: 'playerslist#index'
  get '/play', to: 'play#start'
  get '/endgame', to: 'play#endgame'



end
