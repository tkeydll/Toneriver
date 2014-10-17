class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :item
      t.references :user
      t.string :description

      t.timestamps
    end
    add_index :comments, :item_id
    add_index :comments, :user_id
  end
end
