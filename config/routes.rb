Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  ###### ROOT ROUTE #####
  root 'products#index'

  ##### PRODUCT ROUTES #####
  resources :products


  ##### SHOPPING_CART ROUTES #####
  get 'shopping_carts/:id' => 'carts#show', as: "cart"
  delete 'shopping_carts/:id' => 'shopping_carts#destroy'

  
  ##### USER ROUTES #####
  # resources :sessions, only: [:create]
  # delete :logout, to: "sessions#logout"
  # get :logged_in, to: "sessions#logged_in"
  resources :users



  ##### LINE_ITEMS ROUTES ######
  post 'line_items' => 'line_items#create'
  get 'line_items/:id' => 'line_items#show', as: 'line_item'
  delete 'line_items/:id' => 'line_items#destroy'
  post 'line_items/:id/add' => 'line_items#add_quantity', as: 'line_item_add'
  post 'line_items/:id/reduce' => 'line_items#reduce_quantity', as: 'line_item_reduce'
  

  # resources :products do
  #   resources :line_items
  # end

  # resources :shopping_carts do
  #   resources :line_items
  # end

  # resources :shopping_carts do 
  #   resources :products
  # end

  
  
end
