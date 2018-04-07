class HomeController < ShopifyApp::AuthenticatedController

  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @variants = ShopifyAPI::Variant.find(:all)
  end

end