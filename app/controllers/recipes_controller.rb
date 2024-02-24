class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    authorize @recipe

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name, :instructions, :preptime, :cooktime, :totaltime, :difficulty, :servings, :image_url, :video_url, :date
    )
  end
end
