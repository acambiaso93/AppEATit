class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @profile = @user.profile
    @user_ingredients = @user.user_ingredients.includes(:ingredient)
    @user_ingredient = UserIngredient.new
    @ingredients = Ingredient.all
    @recipe = Recipe.new

    if params[:query].present?
      @recipes = Recipe.search_by_name_or_ingredients(params[:query])
      @tab = "Explore"
    elsif params[:clear].present?
      @recipes = Recipe.all
      @tab = "Explore"
    elsif params[:source].present?
      @recipes = Recipe.all
      @tab = "Cookbook"
    else
      @recipes = Recipe.all
    end

    @my_recipes = current_user.recipes
    @my_favorites = current_user.favorite_recipes
    @target = params[:target]

    min_matching_ingredients = 0.5
    @matching_recipes = Recipe.joins(:recipe_ingredients)
                              .where(recipe_ingredients: { ingredient_id: @user.user_ingredients.pluck(:ingredient_id) })
                              .group('recipes.id')
                              .having('COUNT(recipe_ingredients.ingredient_id) >= ?', min_matching_ingredients)
                              .distinct
  end

  def add_ingredient
    @user_ingredient = UserIngredient.new(user_ingredient_params)
    @user_ingredient.user = current_user

    if @user_ingredient.save
      redirect_to dashboard_path, notice: "Ingredient added successfully."
    else
      redirect_to dashboard_path, alert: "Failed to add ingredient."
    end
  end

  private

  def user_ingredient_params
    params.require(:user).permit(:ingredient_id, :quantity)
  end
end
