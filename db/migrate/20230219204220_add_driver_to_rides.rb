class AddDriverToRides < ActiveRecord::Migration[7.0]
  def change
    add_reference :rides, :driver, index: true
  end
end
