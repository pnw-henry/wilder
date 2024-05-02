class AddLongitudeToTrails < ActiveRecord::Migration[7.1]
  def change
    add_column :trails, :longitude, :float
  end
end
