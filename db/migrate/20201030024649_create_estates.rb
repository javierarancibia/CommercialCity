class CreateEstates < ActiveRecord::Migration[5.2]
  def change
    create_table :estates do |t|
      t.references :user
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :bathrooms

      t.timestamps
    end
  end
end
