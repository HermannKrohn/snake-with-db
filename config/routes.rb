Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #User sign-up/login
  get '/', to:"user#index"

  get '/signup', to: "user#signup"

  post '/sign-in', to:"user#signin"

  post 'create-account', to: "user#create_account"

  #Snake
  get '/:id/snake', to: "snake#game_screen"

  #Score
  post '/:id/player-score', to: "score#set_player_score"

end
