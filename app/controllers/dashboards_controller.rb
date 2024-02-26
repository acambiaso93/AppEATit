class DashboardsController < ApplicationController
  before_action :authenticate_user!
  def show
    @user_ingredients = UserIngredient.all
  end
end
