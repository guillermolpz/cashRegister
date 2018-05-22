ShopifyApp.configure do |config|
  config.application_name = "Tapioca"
  config.api_key = "b8973da873d23114233bdd9f8e8ee68a"
  config.secret = "205c0af615230d0c0a071e7ef2f09949"
  config.scope = "read_products, write_products, read_product_listings, read_customers, write_customers, read_orders, write_orders, read_draft_orders, write_draft_orders, read_shipping, write_shipping, read_checkouts, write_checkouts, read_price_rules, write_price_rules"
  config.embedded_app = false
  config.after_authenticate_job = false
  config.session_repository = Shop
end
