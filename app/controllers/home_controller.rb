#class HomeController < ShopifyApp::AuthenticatedController
class HomeController < ApplicationController

  include ShopifyApp::LoginProtection
  before_action :login_again_if_different_shop
  around_action :shopify_session
  before_action :authenticate_user!

  def index
    # Get all product
    #@products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
    @price_rules = ShopifyAPI::PriceRule.find(:all, params: { limit:10 })
  end

end
