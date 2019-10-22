Rails.application.routes.draw do
  # get '/games/:id', to: 'games#show', as: 'game'
  resources :games, only: [:new, :create, :edit, :update, :show]
  resources :companies, only: [:show, :edit, :update]
  resources :players, only: [:new, :create, :edit, :update, :show]

end