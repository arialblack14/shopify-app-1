class HomeController < ShopifyApp::AuthenticatedController

	def index
		@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
		@variants = ShopifyAPI::Variant.find(:all)
	end

	def hello
		@hello = "hello"
		@new_product = ShopifyAPI::Product.new
		@new_product.title = "Burton Custom Freestlye 151"
		@new_product.product_type = "Snowboard"
		@new_product.vendor = "nine15-dev-store"
		@new_product.save
	end

end