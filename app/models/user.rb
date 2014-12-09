class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :reviews

  has_many :pills, through: :reviews
  # has many through does not work right now, start with just adding pills to site
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
