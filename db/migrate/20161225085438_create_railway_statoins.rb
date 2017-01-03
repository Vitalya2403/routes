class CreateRailwayStatoins < ActiveRecord::Migration[5.0]
  def change
    create_table :railway_statoins do |t|
      t.string :title

      t.timestamps
    end
  end
end
