class OrderController < ApplicationController

  include ShopifyApp::LoginProtection
  before_action :login_again_if_different_shop
  around_action :shopify_session
  before_action :authenticate_user!

  def index
    # Get all orders
    @orders = ShopifyAPI::Order.find(:all, :params => {:limit => 100})
  end
end
