class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    product = Product.find_by(id: params[:product_id])
    calc_subtotal = params[:quantity].to_i * product.price
    calc_tax = params[:quantity].to_i * product.tax
    calc_total = calc_subtotal + calc_tax
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total,
    )
    @order.save
    render "show.json.jb"
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end
end
