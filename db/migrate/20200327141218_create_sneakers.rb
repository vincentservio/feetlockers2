class CreateSneakers < ActiveRecord::Migration[4.2]
  def change
     create_table :sneakers do |t|
            t.text :brand
            t.text :style
            t.text :name
            t.text :size
            t.text :retail
            t.text :colorway
            t.text :sku
            t.text :release
            t.text :imageurl
            t.text :user_id
        end 
    
  end
end
