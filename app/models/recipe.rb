class Recipe < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  has_many :cookbooks, dependent: :destroy
end
