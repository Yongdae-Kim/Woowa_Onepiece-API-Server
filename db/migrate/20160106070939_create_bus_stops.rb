class CreateBusStops < ActiveRecord::Migration[5.0]
  def change
    create_table :bus_stops do |t|
      t.string :bus_stop_key, null: false
      t.text :bus_stop_nm, null: false
      t.text :bus_stop_addr, null: false
      t.text :bus_stop_lat, null: false
      t.text :bus_stop_lng, null: false
      t.integer :ads_count, default: 0
      t.timestamps
    end
  end
end
