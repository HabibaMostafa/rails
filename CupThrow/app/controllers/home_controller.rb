# require '../../A1/A1_Classes.rb'

class HomeController < ApplicationController
  def index
  end

  def display_user_info 
    # data comes through params 
    current_user.points += 2
    puts current_user.points

  end 
end
