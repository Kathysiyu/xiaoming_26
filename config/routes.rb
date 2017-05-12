Rails.application.routes.draw do
  devise_for :users
   root 'home#index'
   resources :tweets
   post 'create_reply', to: 'replies#create', as: :create_reply
   resources :users, only: [:show] do
  resources :reviews, only: [:new, :create]
  end
  resource :profile, only: [:new, :create, :edit, :update]
  get "about", to: "home#about"
  get "strategy", to: "home#strategy"
end