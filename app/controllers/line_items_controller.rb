class LineItemsController < ApplicationController
    
    
    def create 
        selected_product = Product.find(params[:product_id])
        current_shopping_cart = @current_shopping_cart
        
        if current_shopping_cart.products.include?(selected_product)
            @line_item = current_shopping_cart.line_times.find_by(:product_id => selected_product)
            @line_item.quantity_needed += 1
        else
            @line_item = LineItem.new
            @line_item.shopping_cart = current_shopping_cart
            @line_item.product = selected_product
        end

        @line_item.save
        render json: { current_shopping_cart }
            
    end

    def add_quantity 
        @line_item = LineItem.find(params[:id])
        @line_item.quantity_needed += 1
        @line_item.save 
        render json: { @current_shopping_cart }
    end

    def reduce_quantity 
        @line_item = LineItem.find(params[:id])
        if @line_item.quantity_needed > 1 
            @line_item.quantity_needed -= 1
        end
        @line_item.save 
        render json: { @current_shopping_cart }
    end

    def destroy 
        @line_item = LineItem.find(params[:id])
        @line_item.destroy
        render json: { @current_shopping_cart }
    end

    private
    def line_item_params
        params.require(:line_item).permit(:quantity_needed, :product_id, :shopping_cart_id)
    end
    
end
