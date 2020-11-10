class AddLocationToEstates < ActiveRecord::Migration[5.2]
  def change
    add_reference :estates, :location, foreign_key: true
  end
end
