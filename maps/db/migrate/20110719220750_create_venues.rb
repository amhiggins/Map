class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.timestamp :venue_timestamp
      t.float :latitude
      t.float :longitude
      t.integer :venue_id
      t.integer :actioncount

      t.timestamps
    end
  end

  def self.down
    drop_table :venues
  end
end
