ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "c6014856dc7054ed2d79814277b264d9"
  config.secret = "55d3fbb5ceeb236ea9806df98180ec42"
  config.scope = "read_products, write_products, read_product_listings, read_customers, write_customers, read_orders, write_orders, read_draft_orders, write_draft_orders, read_shipping, write_shipping, read_checkouts, write_checkouts, read_price_rules, write_price_rules"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
