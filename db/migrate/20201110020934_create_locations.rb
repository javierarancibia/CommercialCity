class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :code
      t.string :provincia
      t.string :region
      t.string :region_number
      t.string :region_iso_3166_2

      t.timestamps
    end
  end
end
