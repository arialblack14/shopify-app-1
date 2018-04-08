class HomeController < ShopifyApp::AuthenticatedController

	def index
		@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
		@variants = ShopifyAPI::Variant.find(:all)
	end

	def hello
		@hello = "hello"
		@product = ShopifyAPI::Product.find(649675538498)
		@product.title = "test 2"
		@product.save
	end

end