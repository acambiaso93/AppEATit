class RemovePrepTimeFromRecipe < ActiveRecord::Migration[7.1]
  def change
    remove_column :recipes, :prep_time
  end
end
