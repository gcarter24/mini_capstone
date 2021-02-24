class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def chair

    @product = Product.find_by(id: 1)
    render "chair.json.jb"
  end 
end
