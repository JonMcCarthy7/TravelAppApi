class AddImageToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :trip_header, :string
  end
end
