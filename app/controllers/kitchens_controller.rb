class KitchensController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params

  def show
    @user_ingredients = @user.user_ingredients.includes(:ingredient)
    @user_ingredient = UserIngredient.new
    @ingredients = Ingredient.all
    min_matching_ingredients = 3
    @matching_recipes = Recipe.joins(:recipe_ingredients)
                              .where(recipe_ingredients: { ingredient_id: @user.user_ingredients.pluck(:ingredient_id) })
                              .group('recipes.id')
                              .having('COUNT(recipe_ingredients.ingredient_id) >= ?', min_matching_ingredients)
                              .distinct
  end

  private

  def set_params
    @user = current_user
    @profile = @user.profile
  end
end
