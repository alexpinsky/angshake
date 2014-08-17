class OrdersController < ApplicationController

  def show
    
  end

  def create
    @order = Order.new(params[:order])
    params[:products].each do |product_hash|
      product = Product.find(product_hash[:id])
      @order.products << product
    end
    if @order.save
      render json: @order
    else
      render json: { status: 401 }
    end
  end

  private

    def order_params
      params.require(:order).permit(:name, :age)
    end
end