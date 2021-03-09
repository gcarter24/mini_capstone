class Api::ProductsController < ApplicationController
  def index
    # if params[:discount] == "true"
    #   @products = Product.where("price < 15")
    # elsif params[:sort] == "price" && params[:sort_order] == "desc"
    #   @products = Product.order(price: :desc)
    # elsif params[:sort] == "price" && params[:sort_order] == "asc"
    #   @products = Product.all.order(price: :asc)
    # else
    #   @products = Product.all
    # end
    if current_user
      @products = Product.all
    else
      @products = []
    end

    render "index.json.jb"
  end

  def show
    #@id = { id: params[:id] }
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      images: params[:images],
      description: params[:description],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.images = params[:images] || @product.images
    @product.description = params[:description] || @product.description
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    #@product.destroy
    render "show.json.jb"
  end
end
