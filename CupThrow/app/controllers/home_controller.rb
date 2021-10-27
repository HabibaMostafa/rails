require_relative './A1/A1_Classes.rb'

class HomeController < ApplicationController
 
  def index
    @users = User.all
  end

  def init_player 
    @player = Player.new(current_user.name)
    h1 = Hand.new
  
    c1 = Coin.new(0.25)
    c2 = Coin.new(0.25)
    c3 = Coin.new(0.25)

    d1 = Die.new(6, :white)
    d2 = Die.new(6, :white)
    d3 = Die.new(6, :white)
    
    # store all init randomizers in player's bag
    h1.store_all [c1, c2, c3, d1, d2, d3]
    p1.move_all(h1)

    redirect_to home_game_path 
  end 

  def throw_cup
    current_user.bag = "currgame"
    current_user.name
    current_user.user_score = 16
    current_user.save
    render 'game' 
  end 

  def buy_coins
    # current_user.coins = 1s
    cost = params[:coins_count].to_i * 2
    current_user.gems = current_user.gems - cost
    current_user.save
    render 'items' 
  end

  def buy_dice
    cost = params[:dice_count].to_i * params[:dice_sides].to_i
    current_user.gems = current_user.gems - cost
    current_user.save
    render 'items' 
  end

end