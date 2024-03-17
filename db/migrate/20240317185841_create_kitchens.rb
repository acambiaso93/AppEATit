class CreateKitchens < ActiveRecord::Migration[7.1]
  def change
    create_table :kitchens do |t|
      t.references :dashboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
