module RecipesHelper
  def user_has_ingredient_class(ingredient_id)
    if @recipe_ingredient_ids.nil?
      ''
    else
      @recipe_ingredient_ids.include?(ingredient_id) ? 'user-has-ingredient' : ''
    end
  end
end
