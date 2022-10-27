class CreateRenters < ActiveRecord::Migration[7.0]
  def change
    create_table :renters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.boolean :insurance
      t.boolean :driver_license
      t.integer :age
      t.integer :birthdate
      t.string :avatar

      t.timestamps
    end
  end
end
