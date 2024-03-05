class ChangeDifficultyToBeStringInRecipe < ActiveRecord::Migration[7.1]
  def change
    change_column :recipes, :difficulty, :string
  end
end
