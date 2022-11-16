Rails.application.routes.draw do
    post 'top/login'
    get 'top/logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'top#login'
    resources :users
    get 'top/main'
    get 'top/login'
end
