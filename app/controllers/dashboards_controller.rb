class DashboardsController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    @user_ingredients = @user.user_ingredients.includes(:ingredient)
    @ingredients = Ingredient.all
  end

  def add_ingredient
    @user = current_user
    @user_ingredient = @user.user_ingredients.new(user_ingredient_params)

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
