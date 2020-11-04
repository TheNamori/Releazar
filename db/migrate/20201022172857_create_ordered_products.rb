class CreateOrderedProducts < ActiveRecord::Migration
  def change
    create_table :ordered_products do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :product_total_quantity
      t.float :product_total_price

      t.timestamps null: false
    end
  end 
end
