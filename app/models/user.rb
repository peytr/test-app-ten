class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # example
  # current_user.profile.first_name
  # User.find(2).profile.first_name
  # makes your method singular
  has_one :profile
  has_many :requests
  has_many :offers
end
