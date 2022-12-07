class OrdersController < ApplicationController
    def new
        @order = Order.new(product_id: params[:product_id])
        @flag = false
    end
    def index
        @flag = false
    end
    
    def create
        @order = Order.new(product_id: params[:product_id])
        @order.save
    end
end
