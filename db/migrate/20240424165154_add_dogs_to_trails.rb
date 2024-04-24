class AddDogsToTrails < ActiveRecord::Migration[7.1]
  def change
    add_column :trails, :dogs, :boolean
  end
end
