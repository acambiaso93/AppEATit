class UserIngredient < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :ingredient, dependent: :destroy
end
