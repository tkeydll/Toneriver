class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :no
      t.string :name
      t.string :image
      t.integer :unit_price
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
