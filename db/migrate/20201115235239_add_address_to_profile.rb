class AddAddressToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :address, :string
    add_reference :profiles, :location, foreign_key: true, default: 1
  end
end
