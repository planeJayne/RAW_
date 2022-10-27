class CreateRentalCars < ActiveRecord::Migration[7.0]
  def change
    create_table :rental_cars do |t|
      t.integer :owner_id
      t.integer :renter_id
      t.string :make
      t.string :model
      t.integer :year
      t.string :vehicle_type
      t.string :color
      t.integer :rating
      t.string :picture
      t.string :description
      t.string :transmission
      t.string :engine_type
      t.integer :price
      t.integer :mileage

      t.timestamps
    end
  end
end
