class RemoveEstateIdFromLocations < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :estate_id, :integer
  end
end
