class CreateRecipeCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_categories do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
