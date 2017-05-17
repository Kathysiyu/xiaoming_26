Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :places
  resources :tweets
  post 'create_reply', to: 'replies#create', as: :create_reply
  resources :users, only: [:show]
  post 'create_review', to: 'reviews#create', as: :create_review
  resource :profile, only: [:new, :create, :edit, :update]
  resource :bar_code, only: [:new, :create, :edit, :update]
  get "about", to: "home#about"
  get "strategy", to: "home#strategy"
end
