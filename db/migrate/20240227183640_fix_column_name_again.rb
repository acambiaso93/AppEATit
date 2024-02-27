class FixColumnNameAgain < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :username, :user_name
  end
end
