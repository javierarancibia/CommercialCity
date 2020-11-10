class RemoveNameFromEstate < ActiveRecord::Migration[5.2]
  def change
    remove_column :estates, :name, :string
  end
end
