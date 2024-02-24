class FixNaming < ActiveRecord::Migration[7.1]
  def change
    rename_column :ingredients, :imageURL, :image
    rename_column :recipes, :difficultylevel, :difficulty
    rename_column :recipes, :preptime, :prep_time
    rename_column :recipes, :cooktime, :cook_time
    rename_column :recipes, :totaltime, :total_time
    rename_column :recipes, :imageURL, :image
    rename_column :recipes, :videoURL, :video
    remove_column :recipes, :creationdate
  end
end
