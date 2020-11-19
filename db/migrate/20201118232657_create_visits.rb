class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :content
      t.datetime :start
      t.datetime :end
      t.references :estate, foreign_key: true

      t.timestamps
    end
  end
end
