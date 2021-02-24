class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def product1

    @product1 = Product.first
    render "product1.json.jb"
  end 
end
