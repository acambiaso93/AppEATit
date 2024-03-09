class RemoveQuantityFromRecipeIngredient < ActiveRecord::Migration[7.1]
  def change
    remove_column :recipe_ingredients, :quantity
  end
end
