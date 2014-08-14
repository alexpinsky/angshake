class CreateOrderProductRelations < ActiveRecord::Migration
  def change
    create_table :order_product_relations do |t|
      t.integer :product_id
      t.integer :order_id

      t.timestamps
    end
  end
end
