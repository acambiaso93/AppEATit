class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  has_many :favorites, dependent: :destroy
  has_many :favorited_by, through: :favorites, source: :user
  has_one_attached :photo
  has_many :recipe_categories, dependent: :destroy
  has_many :categories, through: :recipe_categories

  accepts_nested_attributes_for :recipe_categories, allow_destroy: true

  validates :name, presence: true, length: { minimum: 2 }
  validates :instructions, presence: true, length: { minimum: 32, too_short: "Describe your recipe's instructions more
    detailed!" }
  validates :category, presence: true
  validates :difficulty, presence: true, inclusion: { in: %(easy, moderate, hard) }
  validates :servings, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :cooking_time, presence: true, numericality: true

  include PgSearch::Model
  pg_search_scope :search_by_name_or_ingredients,
                  against: [:name],
                  associated_against: {
                    ingredients: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
