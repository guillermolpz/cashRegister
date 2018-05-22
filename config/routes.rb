Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'products/index'
  devise_for :users
  #devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'

  #resources :sells
  #resources :orders
  #resources :products

  get 'product/index'
  get 'order/index'
  get 'sell/index'
  get 'caja/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
