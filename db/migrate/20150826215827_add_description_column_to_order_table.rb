class AddDescriptionColumnToOrderTable < ActiveRecord::Migration
  def change
    add_column :orders, :description, :text
  end

  def down
    remove_column :orders, :description
  end
end
