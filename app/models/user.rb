class User < ApplicationRecord
    has_secure_password
    validates_presence_of :email
    validates_uniqueness_of :email

    has_many :line_items, dependent: :destroy
    has_many :products, through: :line_items
end
