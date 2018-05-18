Rails.application.routes.draw do
  devise_for :users
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'

  #resources :sells
  #resources :orders
  #resources :products

  get 'product/index'
  get 'order/index'
  get 'sell/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
