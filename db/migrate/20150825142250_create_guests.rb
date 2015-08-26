class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :seat_number
      t.integer :party_id
      t.timestamps
    end
  end
end
