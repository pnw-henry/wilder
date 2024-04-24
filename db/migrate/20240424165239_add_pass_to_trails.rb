class AddPassToTrails < ActiveRecord::Migration[7.1]
  def change
    add_column :trails, :pass, :string
  end
end
