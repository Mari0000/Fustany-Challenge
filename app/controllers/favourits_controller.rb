class FavouritsController < ApplicationController

  def index 
    @products = Product.favourite_list
  end 
end
