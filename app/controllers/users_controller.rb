class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: { users }
    end

    def show 
        user = User.find(params[:id])
    end

    def new 
        user = User.new
    end

    def create 
        @user = User.new(user_params)
        
        @current_shopping_cart.line_items.each do |item|
            @user.line_items << item
            item.shopping_cart_id = nil 
        end
        @user.save
        ShoppingCart.destroy(session[:shopping_cart_id])
        session[:shopping_cart_id] = nil
        render json: { products }
    end

    private
    def user_params
        params.permit(:email, :password, :first_name, :last_name, :address)
    end


end
