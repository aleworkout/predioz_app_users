Rails.application.routes.draw do
  resources :pagos
  resources :members
  resources :alejandros
  resources :predios
  resources :categories
  devise_for :users
  resources :products
  resources :shops

  root 'shops#index'
  
  
  get 'users/:id/shops' => 'users#shops', :as => :user_shops

  resources :users do
  member do
    get :shops
  end
  end
  
  
  
end
