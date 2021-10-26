require_relative './A1/A1_Classes.rb'

class HomeController < ApplicationController
 
  def index
    @users = User.all
    # @user.bag = "Dice: "
    # @user.user_score = 5
    # @user.name = "test"
    # @user.user_score.saves
  end

  def init_player 
    @about_me = "tests"
    # @user = current_user
    # # data comes through params 

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

    # current_user.bag = "test"
    # current_user.bag.save
    # redirect to index
    redirect_to home_game_path #'home/game' // render 'game'
  end 

  def throw_cup
    @player.throw()
    # p1.load({ params here })
    @throw = @player.throw
    @throw.results  
    @user.throw_result = rand(10...30)
    @user.throw_result.save
  end 

end

# <%= @user.throw_result %>

# <% @user.items.each do |item| %>
  # <tr>
  #     <td><%= link_to game.id, game_path(game.id) %></td>
  #     <td><%= item.type %></td>
  #     <td><%= item.count %></td>
  #     <td><%= item.description %></td>
  # </tr>

# <%= submit_tag ('Add to my Cup') %>
# <%= link_to "Throw", :controller => :home_controller, type: "button", action: "throw_cup", class: "btn btn-dark" %>
