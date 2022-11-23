Rails.application.routes.draw do
    post 'top/login'
    get 'top/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users
    
    root 'top#login'
    get 'top/main'
    post 'products/index'
    get 'get_image/:id', to: 'products#get_image'
    resources :products do
    resources :orders, only: [:index, :create]
  end
    
end
