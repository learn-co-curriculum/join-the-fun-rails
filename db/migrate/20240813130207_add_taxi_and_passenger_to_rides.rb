class AddTaxiAndPassengerToRides < ActiveRecord::Migration[5.0]
  def change
    add_reference :rides, :taxi, foreign_key: true
    add_reference :rides, :passenger, foreign_key: true
  end
end
