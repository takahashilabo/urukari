class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def create
        user = User.new(email: params[:user][:email], password: BCrypt::Password.create(params[:user][:password]), name: params[:user][:name], address: params[:user][:address], number: params[:user][:number])
        if user.save
            redirect_to top_login_path
        else
            render new_user_path
        end
    end
end
