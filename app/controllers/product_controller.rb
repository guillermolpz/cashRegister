class ProductController < ApplicationController

  include ShopifyApp::LoginProtection
  before_action :login_again_if_different_shop
  around_action :shopify_session
  before_action :authenticate_user!

  def index
    # Get all product
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
  end
end
