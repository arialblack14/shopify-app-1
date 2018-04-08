class HomeController < ShopifyApp::AuthenticatedController

	def index
		@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
		@new_product = ShopifyAPI::Product.new
		@variants = ShopifyAPI::Variant.find(:all)
	end

	def hello
		@hello = "hello"
	end

end