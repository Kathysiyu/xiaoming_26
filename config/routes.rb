Rails.application.routes.draw do
  devise_for :users
  root  'tweets#toppage'
  resources :tweets do
    resources :replies, only: [:create]
  end
  resources :users, only: [:show]

    resources :profiles, only: [:new, :create]
end