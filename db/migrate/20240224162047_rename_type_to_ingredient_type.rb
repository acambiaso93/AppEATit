class RenameTypeToIngredientType < ActiveRecord::Migration[7.1]
  def change
    rename_column :ingredients, :type, :ingredient_type
  end
end
