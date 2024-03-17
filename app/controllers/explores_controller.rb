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

    @my_favorites = current_user.favorite_recipes
  end
end
