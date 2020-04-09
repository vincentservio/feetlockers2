class Sneaker < ActiveRecord::Base
     belongs_to :user
     validates :brand, presence: true
     validates :style, presence: true
     validates :name, presence: true
end