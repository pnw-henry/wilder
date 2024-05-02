class AddLatitudeToTrails < ActiveRecord::Migration[7.1]
  def change
    add_column :trails, :latitude, :float
  end
end
