class CajaController < ApplicationController

  include ShopifyApp::LoginProtection
  before_action :login_again_if_different_shop
  around_action :shopify_session
  before_action :authenticate_user!

  def index
    # Get all orders
    @orders = ShopifyAPI::Order.find(:all, :params => {:limit => 10})
    #puts "brutos>> #{@orders}" 

    @sum = 0
	@orders.each do |order|
		@sum += order.total_price.to_f
		#puts "datos>> #{order.total_price}
	end
	#puts @sum 
    
  end
end