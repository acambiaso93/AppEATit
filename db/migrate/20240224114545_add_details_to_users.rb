class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :description, :text
    add_column :users, :diet, :string
    add_column :users, :profile_picture_url, :string
    add_column :users, :location, :string
  end
end
