require_relative './A1/A1_Classes.rb'

class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def init_player 
    # data comes through params 
    p1 = Player.new(@current_user.name)
    h1 = Hand.new
  
    c1 = Coin.new(0.25)
    c2 = Coin.new(0.25)
    c3 = Coin.new(0.25)

    d1 = Die.new(6, :white)
    d2 = Die.new(6, :white)
    d3 = Die.new(6, :white)

    # store all init randomizers in player's bag
    h1.store_all [c1, c2, c3, d1, d2, d3]
  end 


end
