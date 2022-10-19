class AddAttributesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :organizer, :boolean, default: false
    add_column :users, :phone, :integer
  end
end
