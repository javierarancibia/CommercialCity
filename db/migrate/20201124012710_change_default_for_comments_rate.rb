class ChangeDefaultForCommentsRate < ActiveRecord::Migration[5.2]
  def change
    change_column :comments , :rate , :integer , default: 0
  end
end
