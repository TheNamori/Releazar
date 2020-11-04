class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :deliverer_id
      t.integer :products_total_quantity 
      t.float :order_total_price

      t.timestamps null: false
    end
  end
end
