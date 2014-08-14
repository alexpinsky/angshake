class Order < ActiveRecord::Base
  has_many :order_product_relations
  has_many :products, through: :order_product_relations
end