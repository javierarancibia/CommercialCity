class AddStorageToEstates < ActiveRecord::Migration[5.2]
  def change
    add_column :estates, :storage, :integer, default: 0
  end
end
