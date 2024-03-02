class Review < ApplicationRecord
  belongs_to :recipe, dependent: :destroy
  belongs_to :user
end
