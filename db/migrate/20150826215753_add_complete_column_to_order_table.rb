class AddCompleteColumnToOrderTable < ActiveRecord::Migration
  def change
    add_column :orders, :complete, :boolean
  end

  def down
    remove_column :orders, :complete
  end
end
