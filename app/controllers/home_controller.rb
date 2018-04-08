class HomeController < ShopifyApp::AuthenticatedController

	def index
		@products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
		@variants = ShopifyAPI::Variant.find(:all)
	end

	def hello
		@hello = "hello"


session = ShopifyAPI::Session.new(shop,token)
	if session.valid?
		ShopifyAPI::Base.activate_session(session)
				 @new_product = ShopifyAPI::Product.new
				 @new_product.title = "new"
				 @new_product.save
end



	end

end