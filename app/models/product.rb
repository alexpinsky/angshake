class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_product_relations
  has_many :orders, through: :order_product_relations
  
  accepts_nested_attributes_for :category
end