class ProductsController < ApplicationController
    
    def index 
        products = Product.all
    end

    def new 
        product = Product.new
    end

    def create 
        Product = Product.create(product_params)
        render json: { products: products}
    end

    def edit 
        product = Product.find(params[:id])
    end

    def update 
        product - Product.find(params[:id])
        product.update(product_params)
        render json: { products: products }
    end

    def destroy 
        product = Product.find(params[:id])
        product.destroy
        render json: { products: products }
    end

    private
    def product_params
        params.require(:product).permit(:name, :price, :quantity_on_hand, :description)
    end

end
