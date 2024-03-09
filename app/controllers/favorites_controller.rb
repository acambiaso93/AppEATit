class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def favorite
    @recipe = Recipe.find(params[:id])
    @favorite = Favorite.create(user: current_user, recipe: @recipe)
    redirect_to @recipe, notice: 'Recipe added to favorites'
  end

  def unfavorite
    @recipe = Recipe.find(params[:id])
    current_user.favorite_recipes.delete(@recipe)
    redirect_to @recipe, notice: 'Recipe removed from favorites'
  end
end
