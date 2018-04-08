class HomeController < ShopifyApp::AuthenticatedController

	def index
		@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
		@variants = ShopifyAPI::Variant.find(:all)
	end

	def hello
		@hello = "hello"


session = ShopifyAPI::Session.new("nine15-dev-store.myshopify.com", token)
		ShopifyAPI::Base.activate_session(session)
				 @new_product = ShopifyAPI::Product.new
				 @new_product.title = "new"
				 @new_product.save
end



	end

end