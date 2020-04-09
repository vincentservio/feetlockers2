class RemoveShare < ActiveRecord::Migration
  def change
    remove_column :sneakers, :share
  end
end
