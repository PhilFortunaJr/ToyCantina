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
     @featured_product = Product.first
  end
end
