class AddOptionals < ActiveRecord::Migration
  def change
    add_column :sneakers, :share, :boolean 
    add_column :sneakers, :imageurl, :text
  end
end
