class RemoveForeignKeysToRide < ActiveRecord::Migration[5.0]
  def change
    remove_column :rides, :taxi_ride, :integer
  end
end
