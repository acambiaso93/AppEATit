class RenameCookTimeToRecipe < ActiveRecord::Migration[7.1]
  def change
    rename_column :recipes, :cook_time, :cooking_time
  end
end
