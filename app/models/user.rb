class User < ApplicationRecord
    
    validates :name, :password, :address, presence: true 
#    validates :number, format: { with: /\A[0][5678]0[0-9]{8}/ }, presence: true
#    validates :email, format: { with: /\A[0-9]{10}+[a-z]{1}+@+ed.fuk.kindai.ac.jp/ }, presence: true
end
