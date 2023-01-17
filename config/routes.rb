Rails.application.routes.draw do
  resources :users
  resources :products
  resources :orders

  post 'top/login'
  get 'top/logout'
  get 'top/login'
  get 'top/main'

  get 'get_image/:id', to: 'products#get_image'

  root 'top#main'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#    root 'top#login'
#    get 'top/login'
#    post 'products/index'
end
