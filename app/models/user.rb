class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :properties
  has_many :buying_criteria

  # before_action :authenticate_user! 
  # i will only need to authenticate user on certain controller actions

  # make username capitalized all first letters
  # validate presence of certain items

end
