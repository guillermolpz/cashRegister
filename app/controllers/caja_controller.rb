class CajaController < ApplicationController

  include ShopifyApp::LoginProtection
  before_action :login_again_if_different_shop
  around_action :shopify_session
  before_action :authenticate_user!

  def index
    # Get all orders
    #@orders = ShopifyAPI::Order.find(:all, :params => {:limit => 10})
    #puts "brutos>> #{@orders}" 

    #@sum = 0
	#@orders.each do |order|
		#@sum += order.total_price.to_f
		#puts "datos>> #{order.total_price}
	#end
	#puts @sum 

	#Obtencion de fecha y hora
	date = Time.new
	puts "fecha #{date}"
	@fecha = date.strftime("%d/%m/%Y")
	@hora = date.strftime("%H:%M:%S")
	#puts "fecha #{fecha}"
	#puts "fecha #{hora}"
	#@hora =
	#Extraer datos de ordenes
	@Pedido = Order.all
	#Variables para obtencion de TOTAL, SUBTOTAL e IVA
	@total = 0
	@IVA = 0
	@subtotal = 0
	#Variables para obtencion de TOTAL TARJETA y TOTAL EFECTIVO
	@totalT = 0
	@totalE = 0

    @Pedido.each do |pedido|
		@total += pedido.total.to_f
		@IVA += pedido.tax.to_f
		#puts "datos>> #{order.total_price}
		#obtener pagos tarjeta y efctivo
		if pedido.tipo_pago == "Tarjeta"
			@totalT += pedido.total.to_f
		elsif pedido.tipo_pago == "Efectivo"
			@totalE += pedido.total.to_f
		end
	end

	@subtotal = @total - @IVA

	#almacena corte de caja
	def encontrar
	    @cortecaja = @cortecaja.new(params[:Id_corte, :fecha, :hora, :total])

		@cortecaja.save
		redirect_to :action => :show, :id => @post.id
	end

  end
end