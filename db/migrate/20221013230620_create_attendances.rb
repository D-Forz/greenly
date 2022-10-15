class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :attendance_status

      t.timestamps
    end
    add_index :attendances, %i[event_id user_id], unique: true
  end
end
