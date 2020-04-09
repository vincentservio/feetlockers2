class ModifyUserTable < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :password
    add_column :users, :username, :string 
    add_column :users, :password_digest, :string
  end
end
