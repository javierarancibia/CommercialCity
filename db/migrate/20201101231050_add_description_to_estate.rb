class AddDescriptionToEstate < ActiveRecord::Migration[5.2]
  def change
    add_column :estates, :description, :text
  end
end
