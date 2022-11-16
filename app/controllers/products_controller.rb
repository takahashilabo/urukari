class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    def new
        @product = Product.new
    end
    def create
        @product = Product.new(title: params[:product][:title], price: params[:product][:price], description: params[:product][:description], thumbnail: params[:product][:thumbnail])
        @product.save
        redirect_to '/'
    end
    def destroy
        product = Product.find(params[:id])
        product.destroy
        redirect_to products_path
    end
    def show
        @product = Product.find(params[:id])
    end
    def get_image
        product = Product.find(params[:id])
        send_data product.image, disposition: :inline, type: 'image/png'
    end

end
