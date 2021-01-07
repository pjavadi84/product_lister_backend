class User < ApplicationRecord
    has_secure_password

    has_many :line_items, dependent: :destroy
end
