Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'cart' => 'home#cart'
  get 'random-product' => 'home#cart'
  get 'discounts' => 'home#discounts'
  get 'loyalty' => 'home#loyalty'
  get 'customer' => 'home#customer'
end
