class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.date :date
      t.string :road_condition
      t.string :trail_condition
      t.boolean :snow
      t.boolean :bugs
      t.text :summary
      t.integer :user_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
