class ChangeDefaultForEstatesRooms < ActiveRecord::Migration[5.2]
  def change
    change_column :estates , :rooms , :integer , default: 0
  end
end
