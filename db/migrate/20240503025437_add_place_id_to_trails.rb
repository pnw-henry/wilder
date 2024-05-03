class AddPlaceIdToTrails < ActiveRecord::Migration[7.1]
  def change
    add_column :trails, :place_id, :string
  end
end
