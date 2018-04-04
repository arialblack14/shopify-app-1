ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "0338eb2d29688fba312e45aff5e59a25"
  config.secret = "f2d78af8fa1e966e27a2a68411e93f25"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
