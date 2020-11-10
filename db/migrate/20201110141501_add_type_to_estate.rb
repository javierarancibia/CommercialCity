class AddTypeToEstate < ActiveRecord::Migration[5.2]
  def change
    add_reference :estates, :type, foreign_key: true
  end
end
