class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.string :category
      t.integer :difficultylevel
      t.integer :servings
      t.integer :preptime
      t.integer :cooktime
      t.integer :totaltime
      t.string :imageURL
      t.string :videoURL
      t.timestamp :creationdate

      t.timestamps
    end
  end
end
