class UserIngredientsController < ApplicationController

  def create
    @user_ingredient = UserIngredient.create()
  end
end
