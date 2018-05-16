class ApplicationController < ActionController::Base
  include ShopifyApp::LoginProtection
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :login_again_if_different_shop # add
  around_action :shopify_session # add
  before_action :authenticate_user!

end
