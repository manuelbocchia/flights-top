class ChangeFlightColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :flight_id, :booking_id
  end
end
