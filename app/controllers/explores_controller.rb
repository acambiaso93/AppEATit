class ExploresController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @profile = @user.profile
    @user_ingredients = @user.user_ingredients.includes(:ingredient)
    @ingredients = Ingredient.all

    @recipes = if params[:query].present?
                 Recipe.search_by_name_or_ingredients(params[:query])
               else
                 Recipe.all
               end

    @recipes = @recipes.map do |recipe|
      matching_count = recipe.ingredients.where(name: @user_ingredients.pluck(:name)).count
      { recipe: recipe, matching_count: matching_count }
    end

    # Sort recipes based on the matching count in descending order
    @recipes = @recipes.sort_by { |r| -r[:matching_count] }.map { |r| r[:recipe] }

    @my_favorites = current_user.favorite_recipes
  end
end
