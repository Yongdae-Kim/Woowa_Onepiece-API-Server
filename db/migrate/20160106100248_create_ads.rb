class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads  do |t|
      t.integer :ad_cd_id, null: false
      t.text :ad_title, null: false
      t.date :ad_start_dt, null: false
      t.date :ad_end_dt, null: false
      t.references :bus_stop, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
