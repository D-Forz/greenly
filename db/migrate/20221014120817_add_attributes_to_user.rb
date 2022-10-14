class AddAttributesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :lastname, :string, null: false
    add_column :users, :organizer, :boolean, default: false
    add_column :users, :phone, :integer
    add_column :users, :points, :integer, default: 0
  end
end
