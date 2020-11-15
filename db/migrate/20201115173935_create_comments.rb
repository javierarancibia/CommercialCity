class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :rate
      t.integer :user_id
      t.integer :profile_id

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :profile_id
  end
end
