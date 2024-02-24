class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_ingredients, dependent: :destroy
  has_many :recipes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :bookcook
end
