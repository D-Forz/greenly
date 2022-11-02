class AddAttributesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :bio, :string
    add_column :users, :title, :string
    add_column :users, :city, :string
  end
end
