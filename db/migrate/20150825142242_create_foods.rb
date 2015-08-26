class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :cuisine_type
      t.decimal :price
      t.string :allergens
      t.text :more_info
      t.timestamps
    end
  end
end
