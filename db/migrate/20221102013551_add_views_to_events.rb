class AddViewsToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :views, :integer, default: 0
  end
end
