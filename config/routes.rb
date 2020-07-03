Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/games', to: 'games#index'
  get '/games/:id', to: 'games#show'
  post '/games', to: 'games#create'

  get '/players', to: 'players#index'
  post '/players', to: 'players#create'
  # get '/players/:id', to: 'players#show'
  patch '/players/:id', to: 'players#update'

end
