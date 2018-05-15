#class HomeController < ShopifyApp::AuthenticatedController
class HomeController < ApplicationController
before_action :authenticate_user!, only: [:index]

  def index
    #@products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
  end

end
