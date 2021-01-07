class Product < ApplicationRecord
    validates_presence_of :email
    validates_uniqueness_of :email
    
    has_many :line_items, dependent: :destroy
end
