class CreateDeliverers < ActiveRecord::Migration
  def change
    create_table :deliverers do |t|
      t.string :name
      t.string :phone
      t.string :blocked

      t.timestamps null: false
    end
  end
end
