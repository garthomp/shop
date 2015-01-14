class StoreController < ApplicationController
  def index
    session[:counter] ||= 0
    @count = session[:counter] += 1
    @shown_count = "You've been here #{@count} times" if @count > 5
  	@products = Product.order(:title)
  end
end
