class CreateTechtestTables < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :branch_id
      t.string  :dor
      t.string  :colour
      t.string  :fuel_type
      t.string  :year
      t.string  :plate
      t.string  :mileage
      t.string  :body_type
      t.string  :doors
      t.string  :make
      t.string  :model
      t.string  :variant
      t.string  :engine_size
      t.string  :co2
      t.string  :mpg_orig
      t.string  :mpg
      t.string  :price
      t.string  :transmission
      t.string  :previous_owners
      t.timestamps
    end

    create_table :photos do |t|
      t.integer :vehicle_id
      t.string  :scale
      t.string  :path
      t.timestamps
    end

    create_table :branches do |t|
      t.string :web_name
      t.string :web_short_name
      t.string :branch_name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :town
      t.string :postcode
      t.string :region
      t.string :phone
      t.string :sys_longitude
      t.string :sys_latitude
      t.timestamps
    end
  end
end
