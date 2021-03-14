class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    render "index.json.jb"
  end

  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: params[:user_id],
    )
    @carted_product.save

    render "show.json.jb"
  end
end
