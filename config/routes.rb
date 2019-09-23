Rails.application.routes.draw do
  resources :posts
  resources :commentaries
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # devise_for :users
  devise_for :users, controllers: { 
    password: 'users/password',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root :to => "home#index"
  get '/access', to: 'access#index'
  
end
