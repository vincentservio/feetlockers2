class CreateSneakers < ActiveRecord::Migration
  def change
     create_table :sneakers do |t|
            t.text :brand
            t.text :style
            t.text :name
        end 
    
  end
end
