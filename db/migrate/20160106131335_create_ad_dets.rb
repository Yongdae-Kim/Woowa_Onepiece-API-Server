class CreateAdDets < ActiveRecord::Migration[5.0]
  def change
    create_table :ad_dets do |t|
      t.text :ad_det_addr, null: false
      t.text :ad_det_lng, null: false
      t.text :ad_det_lat, null: false
      t.text :ad_det_ct1
      t.text :ad_det_ct2
      t.references :ad, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
