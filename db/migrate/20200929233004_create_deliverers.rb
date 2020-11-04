class CreateDeliverers < ActiveRecord::Migration
  def change
    create_table :deliverers do |t|
      t.string :name
      t.string :description
      t.string :phone
      t.boolean :blocked, default: false

      t.timestamps null: false
    end
  end
end
