class ApplicationController < ActionController::API
    # skip_before_action :verify_authenticity_token
    protect_from_forgery with: :null_session
    before_action :current_shopping_cart

    private
        def current_shopping_cart
            if session[:shopping_cart_id]
                shopping_cart = ShoppingCart.find_by(:id => session[:shopping_cart_id])
                if shopping_cart.present?
                    @current_shopping_cart = shopping_cart
                else
                    session[:shopping_cart_id] = nil
                end
            end

            if session[:shopping_cart_id] == nil
                @current_shopping_cart = ShoppingCart.create
                session[:shopping_cart_id] = @current_shopping_cart.id
            end
        end
end
