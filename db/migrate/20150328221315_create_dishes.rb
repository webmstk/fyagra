class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :dose
      t.integer :price

      t.timestamps
    end
  end
end
