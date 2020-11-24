class ChangeDefaultForEstatesBathrooms < ActiveRecord::Migration[5.2]
  def change
    change_column :estates , :bathrooms , :integer , default: 0
  end
end
