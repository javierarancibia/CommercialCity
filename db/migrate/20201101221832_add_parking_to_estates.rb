class AddParkingToEstates < ActiveRecord::Migration[5.2]
  def change
    add_column :estates, :parking, :integer, default: 0
  end
end
