class StoreController < ApplicationController
  
  def index
  	@products = Product.order(:title)
  	@count = page_view_counter
    @cart = current_cart
  end

  def page_view_counter
  	if session[:counter].nil?
  		session[:counter] = 0
  	end
  	session[:counter] += 1
  end
end