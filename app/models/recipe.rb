class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :cookbooks
end
