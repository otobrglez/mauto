class AddLengthToCars < ActiveRecord::Migration
  def self.up
    add_column :cars, :length, :integer
  end
end
