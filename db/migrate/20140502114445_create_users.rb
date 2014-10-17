class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :name
      t.string :password
      t.string :zip
      t.string :address

      t.timestamps
    end
  end
end
