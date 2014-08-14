class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :category_id
      t.float :price

      t.timestamps
    end
  end
end
