class AddSummaryToTrails < ActiveRecord::Migration[7.1]
  def change
    add_column :trails, :summary, :text
  end
end
