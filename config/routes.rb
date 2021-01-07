Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'products#index'

  resources :line_items
  resources :products
  resources :shopping_carts
  resources :users

  resources :products do
    resources :line_items
  end

  resources :shopping_carts do
    resources :line_items
  end

  resources :shopping_carts do 
    resources :products
  end

  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  
end
