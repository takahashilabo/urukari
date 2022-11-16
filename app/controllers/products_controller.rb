class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    def new
        @product = Product.new
    end
    def create
        @product = Product.new(title: params[:product][:title], price: params[:product][:price], description: params[:product][:description], thumnail: params[:product][:thumnail])
        @product.save
        redirect_to '/'
    end
    def destroy
        product = Product.find(params[:id])
        product.destroy
        redirect_to products_path
    end
end
