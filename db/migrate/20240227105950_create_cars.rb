class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.float :price_per_day
      t.string :address
      t.text :description
      t.integer :km
      t.integer :year
      t.integer :seats
      t.string :carburant
      t.integer :doors
      t.integer :power

      t.timestamps
    end
  end
end
