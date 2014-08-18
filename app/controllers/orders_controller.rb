class OrdersController < ApplicationController

  def index
    render json: Order.includes(:products).to_json(include: :products)
  end

  def create
    @order = Order.new(order_params)
    params[:products].each do |product_hash|
      product = Product.find(product_hash[:id])
      @order.products << product
    end
    if @order.save
      render json: @order
    else
      render json: { status: 400 }, status: 400
    end
  rescue Exception => e
    render json: { status: 500 }, status: 500
  end

  private

    def order_params
      params.require(:order).permit(:name, :street, :city, :state, :zip, :country, :giftwrap)
    end
end