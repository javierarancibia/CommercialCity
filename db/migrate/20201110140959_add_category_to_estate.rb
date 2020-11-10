class AddCategoryToEstate < ActiveRecord::Migration[5.2]
  def change
    add_reference :estates, :category, foreign_key: true
  end
end
