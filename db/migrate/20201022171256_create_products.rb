class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :unit_price
      t.string :description
      t.boolean :dish_day
      t.boolean :blocked

      t.timestamps null: false
    end
  end
end
