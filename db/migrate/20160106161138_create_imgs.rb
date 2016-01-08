class CreateImgs < ActiveRecord::Migration[5.0]
  def change
    create_table :imgs do |t|
      t.text :img_nm_user, null: false
      t.text :img_nm_server, null: false
      t.string :img_size, null: false
      t.text :img_root_path, null: false
      t.text :img_up_path, null: false
      t.text :img_dn_path, null: false
      t.references :ad, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
