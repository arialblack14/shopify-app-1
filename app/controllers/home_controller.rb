class HomeController < ShopifyApp::AuthenticatedController

	def index
		@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
		@variants = ShopifyAPI::Variant.find(:all)
	end

	def hello
		@hello = "hello"
		@product = ShopifyAPI::Product.new(:id => 1, :title => "My new title")
		@product.save
	end

end