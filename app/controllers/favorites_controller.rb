class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def favorite
    @recipe = Recipe.find(params[:id])
    @favorite = Favorite.create(user: current_user, recipe: @recipe)
    flash[:notice] = 'Recipe added to favorites'
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
    end
  end

  def unfavorite
    @recipe = Recipe.find(params[:id])
    current_user.favorite_recipes.delete(@recipe)
    redirect_to @recipe, notice: 'Recipe removed from favorites'
  end
end
