class SimplePagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def orders
  end

  def landing_page
     @products = Product.limit(3)
  end
end
