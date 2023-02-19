class AddFieldsToRides < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :ride_earnings, :float
    add_column :rides, :commute_duration, :integer
    add_column :rides, :ride_duration, :integer
    add_column :rides, :score, :float
  end
end
