class CreateBuses < ActiveRecord::Migration[5.0]
  def change
    create_table :buses  do |t|
      t.string :bus_key, null: false
      t.text :bus_nm, null: false
      t.references :day_of_week, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
