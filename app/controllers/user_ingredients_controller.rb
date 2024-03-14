class UserIngredientsController < ApplicationController
  before_action :authenticate_user!
  def create
    @user_ingredient = UserIngredient.new
    @user_ingredient.user = current_user
    @user_ingredient.ingredient_id = params[:user_ingredient][:ingredient]

    if @user_ingredient.save
      redirect_to dashboard_path, notice: "Ingredient added successfully."
    else
      redirect_to dashboard_path, alert: "Failed to add ingredient."
    end
  end

  def destroy
    @user_ingredient = UserIngredient.find(params[:id])
    @user_ingredient.destroy
    redirect_to dashboard_path, status: :see_other
  end
end
