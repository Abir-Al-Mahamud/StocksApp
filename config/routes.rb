Rails.application.routes.draw do
  get 'home/index'
  get 'stocks/index'
  root to: 'home#index'
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_for :users
  # root to: 'stocks#index'
  # root to: 'devise/sessions#new'
  resources :stocks 
  # resources :stocks, only: [:index]
  resources :users, only: [:index, :show]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
