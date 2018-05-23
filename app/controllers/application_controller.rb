class ApplicationController < ActionController::Base
  include ShopifyApp::LoginProtection
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :login_again_if_different_shop # add
  # around_action :shopify_session # add
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :lastName, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :lastName, :image])
  end


  before_action :authenticate_user!
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end


end
