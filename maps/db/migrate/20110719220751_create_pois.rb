class CreatePois < ActiveRecord::Migration
  def self.up
    create_table :pois do |t|
      t.integer :id
      t.float :lat
      t.float :lon
      t.string :name
	  t.string :buildingType

      t.timestamps
    end
  end

  def self.down
    drop_table :pois
  end
end
