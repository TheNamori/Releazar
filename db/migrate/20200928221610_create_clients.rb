class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :city
      t.string :neighborhood
      t.string :address
      t.integer :deliverer_fee
      t.string :phone
      t.string :order
      t.boolean :blocked, default: false

      t.timestamps null: false
    end
  end
end
