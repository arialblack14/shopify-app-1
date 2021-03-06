class HomeController < ShopifyApp::AuthenticatedController

	def index
		@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
		@variants = ShopifyAPI::Variant.find(:all)
	end

	def new
		@product_new = ShopifyAPI::Product.new
		@product_new.title = "new"
		@product_new.save
	end

end