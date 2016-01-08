class CreateDayOfWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :day_of_weeks do |t|
      t.string :dow_nm, null: false
      t.integer :dow_cd_id, null: false

      t.timestamps
    end
  end
end
