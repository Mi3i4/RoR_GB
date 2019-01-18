Rails.application.routes.draw do

  get 'home/index'
  get 'home', to: 'home#index'
  root 'home#index'
  get 'home/address'
  get 'contacts', to: 'home#address'

end