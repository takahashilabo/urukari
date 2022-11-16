class User < ApplicationRecord
    validates :name, :email, :password, :address, :number, presence: true
    
    
end
