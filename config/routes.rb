Rails.application.routes.draw do
    post 'top/login'
    get 'top/logout'
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users
=======
    root 'top#login'
    resources :users
    get 'top/main'
    get 'top/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 0e98676737ef426830f091291f44f35dcb31c3c3
end
