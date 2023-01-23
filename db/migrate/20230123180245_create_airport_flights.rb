class CreateAirportFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :airport_flights do |t|
      t.integer :flight
      t.integer :departure_airport
      t.integer :arrival_airport

      t.timestamps
    end
  end
end
