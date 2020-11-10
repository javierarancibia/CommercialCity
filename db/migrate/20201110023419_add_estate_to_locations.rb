class AddEstateToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :estate, foreign_key: true
  end
end
