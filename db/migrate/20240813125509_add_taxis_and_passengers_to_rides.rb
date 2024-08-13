class AddTaxisAndPassengersToRides < ActiveRecord::Migration[5.0]
  def change
    add_column :rides, :taxi_id, :integer
    add_column :rides, :passenger_id, :integer

    add_foreign_key :rides, :taxis
    add_foreign_key :rides, :passengers
  end
end
