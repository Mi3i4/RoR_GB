Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  get 'home', to: 'home#index'

  get 'home/address'
  get 'contacts', to: 'home#address'
end