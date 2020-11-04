class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :city
      t.string :neighborhood
      t.string :street
      t.string :street_number
      t.string :cep
      t.string :phone
      t.string :deliverer_fee
      t.boolean :blocked, default: false

      t.timestamps null: false
    end
  end
end
