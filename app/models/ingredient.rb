class Ingredient < ApplicationRecord
  has_many :user_ingredients, dependent: :destroy
  has_many :users, through: :user_ingredients
  has_many :recipe_ingredients, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
