class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :profiles, :location_id, nil
  end
end
