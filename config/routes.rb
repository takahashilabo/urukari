Rails.application.routes.draw do
    post 'top/login'
    get 'top/logout'
    
    resources :products
    root 'products#index'
    get 'get_image/:id', to: 'products#get_image'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
