class LineItem < ApplicationRecord
    belongs_to :user
    belongs_to :shopping_cart
    belongs_to :product
end
