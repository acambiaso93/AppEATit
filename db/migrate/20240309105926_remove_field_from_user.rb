class RemoveFieldFromUser < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :user_name
    remove_column :users, :description
    remove_column :users, :diet
    remove_column :users, :profile_picture_url
    remove_column :users, :location

    add_column :profiles, :user_name, :string
    add_column :profiles, :description, :text
    add_column :profiles, :diet, :string
    add_column :profiles, :profile_picture_url, :string
    add_column :profiles, :location, :string
  end
end
