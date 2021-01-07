class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :address, :user_products

    def user_products
        productsArray = self.object.products
        productsArray.map {|product| UserProductsSerializer.new(product)}
    end

end