Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join('|')}/ do
    devise_for :users

    resources :users
    resources :posts

    # post 'posts/update'
    # post 'save', to:'posts#update'

    root 'posts#index'

    # get 'home/index'
    # get 'home', to: 'home#index'

    # get 'home/address'
    # get 'contacts', to: 'home#address'

    # get 'users/index'
    # get 'users', to: 'users#index'
  end
    # devise_scope :users do
    #   get '/users/sign_out'
    #   get "log_out" => "devise/sessions#destroy"
    #
    #   get '/users/sign_in'
    #   get 'sign_in', to: 'devise/sessions#new'
    #
    #   get '/users/sign_up'
    #   get 'register', to: 'devise/registrations#new'
    # end

end