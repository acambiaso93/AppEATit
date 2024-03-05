class Recipe < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :recipe_ingredients, dependent: :destroy
  has_many :cookbooks, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, length: { minimum: 2 }
  validates :instructions, presence: true, length: { minimum: 100, too_short: "Describe your recipe's instructions more
    detailed!" }
  validates :category, presence: true
  validates :difficulty, presence: true, inclusion: { in: %(easy, moderate, hard) }
  validates :servings, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :cooking_time, presence: true, numericality: true
end
