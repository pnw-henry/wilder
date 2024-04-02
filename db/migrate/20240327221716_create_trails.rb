class CreateTrails < ActiveRecord::Migration[7.1]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.string :intensity
      t.float :length
      t.integer :elevation_gain
      t.integer :highest_point

      t.timestamps
    end
  end
end
