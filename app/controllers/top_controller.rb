class TopController < ApplicationController
    def main
        if session[:name]
            render "products"
        else
            render "login"
        end
    end
    def login
        user = User.find_by(name: params[:name])
        if user
            login_password = BCrypt::Password.new(user.password)
            if login_password == params[:password]
                session[:name] = user.name
                redirect_to products_path
            else
                render "login"
            end
        else
            render "login"
        end
    end
    
    def logout
        session.delete(:name)
        redirect_to top_main_path
    end
    
end
