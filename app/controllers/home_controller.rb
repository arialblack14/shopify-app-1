class HomeController < ShopifyApp::AuthenticatedController

	def index
		@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
		@variants = ShopifyAPI::Variant.find(:all)
	end

	def new
		@new_product = "Create A New Product"
		@product_new = ShopifyAPI::Product.new
	end

end