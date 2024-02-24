class RemoveImgeFromIngredients < ActiveRecord::Migration[7.1]
  def change
    remove_column :ingredients, :image
  end
end
