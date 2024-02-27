class UserIngredientsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @user_ingredient = UserIngredient.find(params[:id])
    @user_ingredient.destroy
    redirect_to dashboard_path
  end
end
