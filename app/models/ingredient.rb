class Ingredient < ApplicationRecord
  has_many :user_ingredients, :recipe_ingredients
end
