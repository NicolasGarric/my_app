Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :admin do
    get 'users/index'
  end
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'about',  to: 'pages#about'
  get 'games',  to: 'pages#games'
  get 'api',    to: 'pages#api'
  get 'contact',to: 'pages#contact'
  get 'creative',to: 'pages#creative'

  # Defines the root path route ("/")
  # root "posts#index"
  namespace :admin do
    resources :users, only: [:index]
  end

end
