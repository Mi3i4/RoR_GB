Rails.application.routes.draw do
  resources :users

  resources :posts

  root 'posts#index'

  # get 'home/index'
  # get 'home', to: 'home#index'

  get 'home/address'
  get 'contacts', to: 'home#address'

  get 'users/index'
  get 'users', to: 'users#index'
end