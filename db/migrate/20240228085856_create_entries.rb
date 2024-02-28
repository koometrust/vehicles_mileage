class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.string :vehicle_name
      t.integer :vehicle_number
      t.string :number_plate
      t.integer :checkout_mileage
      t.integer :checkin_mileage

      t.timestamps
    end
  end
end
