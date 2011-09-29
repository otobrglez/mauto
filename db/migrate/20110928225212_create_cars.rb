class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :e_power
      t.integer :e_horses
      t.integer :e_space
      t.float :price

      t.timestamps
    end
  end
end
