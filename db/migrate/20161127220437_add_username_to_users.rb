class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string # add a new column to the table users, called 'username' as a string
    add_index :users, :username, unique: true # first index username for rapid lookup
  end
end
