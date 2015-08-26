class AddSeatNumberToOrderTable < ActiveRecord::Migration
  def change
    add_column :orders, :seat_number, :integer
  end

  def down
    remove_column :orders, :seat_number
  end
end
