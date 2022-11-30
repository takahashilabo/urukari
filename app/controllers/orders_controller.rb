class OrdersController < ApplicationController
    def new
        @order = Order.new(product_id: params[:product_id])
    end
    def index
    end
    
    def create
    end
    
end
