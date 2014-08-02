class PagesController < ApplicationController

  def index
    render layout: false
  end

  def items
    items = [
      { action: "Buy Flowers", done: false },
      { action: "Get Shoes", done: false },
      { action: "Collect Tickets", done: true },
      { action: "Call Joe", done: false }
    ]
    render json: items
  end
end
