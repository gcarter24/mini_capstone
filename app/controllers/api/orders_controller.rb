class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    @carted_products = current_user.carted_products.where(status: "carted")

    calc_subtotal = 0
    calc_tax = 0

    @carted_products.each do |carted_product|
      calc_subtotal = carted_product.product.price * carted_product.quantity
      calc_tax = carted_product.quantity * carted_product.product.tax
      @calc_total = calc_subtotal + calc_tax
    end

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: @calc_total,
    )
    @order.save

    @carted_products.each do |carted_product|
      carted_product.update(status: "purchased", order_id: @order.id)
    end

    render "show.json.jb"
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end
end
