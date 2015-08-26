class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_number
      t.integer :guest_count
      t.boolean :paid
      t.timestamps
    end
  end
end
