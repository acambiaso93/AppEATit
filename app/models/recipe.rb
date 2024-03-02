class Recipe < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :recipe_ingredients, dependent: :destroy
  has_many :cookbooks, dependent: :destroy
end
