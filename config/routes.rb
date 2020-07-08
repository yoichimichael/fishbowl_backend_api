Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/games', to: 'games#index'
  get '/games/:id', to: 'games#show'
  post '/games', to: 'games#create'
  patch '/games/:id/flash', to: 'games#flash'
  patch '/games/:id/unflash', to: 'games#unflash'

  get '/players', to: 'players#index'
  post '/players', to: 'players#create'
  patch '/players/:id', to: 'players#update'

  patch '/teams', to: 'teams#update'

  post '/submissions', to: 'submissions#create'

  patch '/rounds/:id/start', to: 'rounds#start_turn'
  patch '/rounds/:id/countdown', to: 'rounds#countdown'
  patch '/rounds/:id/end', to: 'rounds#end_turn'

end
