class AddedAttributes < ActiveRecord::Migration
  def change
     add_column :sneakers, :size, :text
    add_column :sneakers, :retail, :text
    add_column :sneakers, :colorway, :text
    add_column :sneakers, :sku, :text
    add_column :sneakers, :release, :text

  end
end
