class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_ingredients, dependent: :destroy
  has_many :ingredients, through: :user_ingredients
  has_many :recipes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :cookbook
  has_one :profile
  accepts_nested_attributes_for :profile

end
