Rails.application.routes.draw do
  # get '/games/:id', to: 'games#show', as: 'game'

  get 'players/give_up', to: 'players#give_up'
  # post "players/funding_round", to: "players#funding_round"
  post "companies/funding_round", to: "companies#funding_round"
  resources :games, only: [:new, :create, :edit, :update, :show]
  resources :companies, only: [:show, :edit, :update, :index]
  resources :players, only: [:new, :create, :edit, :update, :show]

end
