class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :no
      t.references :item
      t.references :order
      t.integer :unit_price
      t.integer :quantity

      t.timestamps
    end
    add_index :order_details, :item_id
    add_index :order_details, :order_id
  end
end
