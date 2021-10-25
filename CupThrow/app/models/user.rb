class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # runs everytime a user registers 
  before_create :create_user
  def create_user
    self.user_score = 0
    self.gems = 0
    self.points = 0
  end

end
