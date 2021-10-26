Rails.application.routes.draw do
  get 'home/index'
  get 'home/game'
  get 'home/items'
  get 'home/init_player', to: 'home#init_player', :as => 'init_player'
  post 'home/throw_cup', to: 'home#throw_cup', :as => 'throw_cup'
  get 'home/new_game', to: 'home#new_game', :as => 'new_game'
  devise_for :users
  resources :users
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
