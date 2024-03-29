class RecipesController < ApplicationController
  before_action :authenticate_user!

  def show
    @recipe = Recipe.includes(recipe_ingredients: :ingredient).find(params[:id])
    @ingredients = @recipe.ingredients
    @user = current_user
    @user_ingredients = @user.user_ingredients.includes(:ingredient)
    @recipe_ingredient_ids = @recipe.ingredients.pluck(:id)
    @my_favorites = current_user.favorite_recipes
    @profile = @user.profile
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user

    if @recipe.save
      redirect_to cookbook_path
    else
      redirect_to cookbook_path, notice: "Error"
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe), notice: 'Recipe was made more yummmy.'
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to cookbook_path, notice: 'My Cat ate the recipe.'
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name, :instructions, :cooking_time, :category, :difficulty, :servings, :image, :video, :user_id, :photo
    )
  end
end
