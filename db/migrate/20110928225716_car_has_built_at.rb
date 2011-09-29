class CarHasBuiltAt < ActiveRecord::Migration
  def self.up
    add_column :cars, :built_at, :datetime
  end
end
