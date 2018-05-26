ShopifyApp.configure do |config|
  config.application_name = "Tapioca"

  config.api_key = ENV["SHOPIFY_API_KEY"]
  config.secret = ENV["SHOPIFY_SECRET"]
  
  config.scope = "read_products, write_products, read_product_listings, read_customers, write_customers, read_orders, write_orders, read_draft_orders, write_draft_orders, read_shipping, write_shipping, read_checkouts, write_checkouts, read_price_rules, write_price_rules"
  config.embedded_app = false
  config.after_authenticate_job = false
  config.session_repository = Shop
end
