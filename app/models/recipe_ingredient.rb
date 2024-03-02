class RecipeIngredient < ApplicationRecord
  belongs_to :recipe, dependent: :destroy
  belongs_to :ingredient
end
