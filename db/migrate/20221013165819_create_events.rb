class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.datetime :event_date, null: false
      t.string :address, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
