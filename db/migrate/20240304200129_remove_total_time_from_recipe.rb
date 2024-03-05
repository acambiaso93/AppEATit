class RemoveTotalTimeFromRecipe < ActiveRecord::Migration[7.1]
  def change
    remove_column :recipes, :total_time
  end
end
