class CreateImgs < ActiveRecord::Migration[5.0]
  def change
    create_table :imgs do |t|
      t.text :img_fname_user, null: false
      t.text :img_fname_server, null: false
      t.string :img_size, null: false
      t.text :img_path_root, null: false
      t.text :img_path_up, null: false
      t.text :img_path_dn, null: false
      t.references :ad, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
