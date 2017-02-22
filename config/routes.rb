Rails.application.routes.draw do
  get 'users/new'

  root to: 'static_pages#home'
  get 'signup', to:'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  
  get 'login', to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  

<<<<<<< HEAD
  resources :users do 
    member do
       get 'followings'
       get 'followers'
     end
   end
=======
  resources :users do
    member do
      get 'followings'
      get 'followers'
    end
  end
>>>>>>> following-followers
  resources :microposts
  resources :relationships, only: [:create, :destroy]
end
