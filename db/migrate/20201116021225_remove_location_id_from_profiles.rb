class RemoveLocationIdFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :location_id, :integer
  end
end
