class ProductsController < ApplicationController
  before_filter :organize_params, only: [:create, :update]
  
  def index
    render json: Product.includes(:category).to_json(include: :category)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product
    else
      render json: { status: 400 }, status: 400
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      render json: @product
    else
      render json: { status: 400 }, status: 400
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      render json: { status: 200 }, status: 200
    else
      render json: { status: 400 }, status: 400
    end
  end

  private

    def organize_params
      params[:product][:category_attributes] = params[:category]
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, category_attributes: [:id, :name])
    end
end