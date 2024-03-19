class CookbooksController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    @profile = @user.profile
    @recipe = Recipe.new
    @my_recipes = current_user.recipes
    @my_favorites = current_user.favorite_recipes
  end
end
