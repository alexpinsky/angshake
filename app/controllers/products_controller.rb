class ProductsController < ApplicationController
  
  def index
    render json: Product.includes(:category).to_json(include: :category)
  end
end