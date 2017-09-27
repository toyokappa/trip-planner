class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :name, null: false
      t.text :description
      t.string :address
      t.decimal :lat, precision: 10, scale: 10
      t.decimal :lng, precision: 10, scale: 10
      t.integer :required_time

      t.timestamps
    end
  end
end
