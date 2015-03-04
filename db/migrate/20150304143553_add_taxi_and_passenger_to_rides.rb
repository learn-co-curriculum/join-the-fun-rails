class AddTaxiAndPassengerToRides < ActiveRecord::Migration
  def change
    add_column :rides, :taxi_id, :integer
    add_column :rides, :passenger_id, :integer
  end
end
