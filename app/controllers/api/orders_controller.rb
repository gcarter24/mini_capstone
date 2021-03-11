class Api::OrdersController < ApplicationController
  def index
    if current_user
      @orders = Order.all
    else
      render json: { error: "you must be signed in to view that" }
    end
    render "index.json.jb"
  end

  def create
    product = Product.find_by(id: params[:product_id])
    calc_subtotal = params[:quantity].to_i * product.price
    calc_tax = calc_subtotal * 0.09
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
    if current_user
      @order = Order.find_by(id: params[:id])
    else
      render json: { error: "you must be signed in to view that" }
    end
    render "show.json.jb"
  end

  # -hold product for purchase
  # -put product in cart (only can intake one product at a time, any quantity of that one product)
  # -take in payment information
  # -save and validate that information
  # -make and approve purchase
end
