class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, :cookbooks
end
