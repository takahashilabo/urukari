class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.all
    end
    
    def create
        user = User.new(email: params[:user][:email], password: params[:user][:password], name: params[:user][:name], address: params[:user][:address], number: params[:user][:number])
        if user.save
            redirect_to root_path
        else
            render new_user_path
        end
    end
end
