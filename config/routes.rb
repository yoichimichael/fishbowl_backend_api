Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/games', to: 'games#index'
  get '/games/:id', to: 'games#show'
  post '/games', to: 'games#create'

  get '/players', to: 'players#index'
  post '/players', to: 'players#create'
  patch '/players/:id', to: 'players#update'

  patch '/teams', to: 'teams#update'

  post '/submissions', to: 'submissions#create'

  patch '/rounds/:id', to: 'rounds#update'

end
