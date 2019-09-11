Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :posts do
    resources :commentaries, only: [:new, :edit, :create, :update, :destroy]
  end
  
  # devise_for :users
  devise_for :users, controllers: { 
    password: 'users/password',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root :to => "home#index"
  #get '/devise/user/edit', to: 'registrations#edit'
  
end
