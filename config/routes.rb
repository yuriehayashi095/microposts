Rails.application.routes.draw do
  get 'users/new'

  root to: 'static_pages#home'
  get 'signup', to:'users#new'
  
  resources :users
  resources :microposts
  resources :relationships, only: [:create, :destroy]
end
