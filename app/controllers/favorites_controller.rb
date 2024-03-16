class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def favorite
    @recipe = Recipe.find(params[:id])
    @favorite = Favorite.create(user: current_user, recipe: @recipe)

  end

  def unfavorite
    @recipe = Recipe.find(params[:id])
    current_user.favorite_recipes.delete(@recipe)
  end
end
