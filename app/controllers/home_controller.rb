class HomeController < ShopifyApp::AuthenticatedController

  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @new_product = ShopifyAPI::Product.new
    @variants = ShopifyAPI::Variant.find(:all)
  end

  def new
  	new_product = ShopifyAPI::Product.new
	new_product.title = "Burton Custom Freestlye 151"
	new_product.product_type = "Snowboard"
	new_product.vendor = "Burton"
	new_product.save
  end

end