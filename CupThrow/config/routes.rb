Rails.application.routes.draw do
  
  get 'home/index'
  get 'home/game'
  get 'home/items'
  post 'home/throw_cup'
  post 'home/buy_dice'
  post 'home/buy_coins'
  get 'home/init_player', to: 'home#init_player', :as => 'init_player'
  get 'home/throw_cup', to: 'home#throw_cup', :as => 'throw_cup'
  get 'home/buy_dice', to: 'home#buy_dice', :as => 'buy_dice'
  get 'home/buy_coins', to: 'home#buy_coins', :as => 'buy_coins'
  get 'home/new_game', to: 'home#new_game', :as => 'new_game'
  
  devise_for :users
  resources :users
  
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
