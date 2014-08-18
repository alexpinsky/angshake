class PagesController < ApplicationController
  layout :set_layout

  def todo
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
  
  def sports_store
  end

  def sports_store_admin
  end

  def example_app
  end

  private 

    def set_layout
      action_name
    end
end
