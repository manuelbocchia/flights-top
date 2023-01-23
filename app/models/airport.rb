class Airport < ApplicationRecord
    has_many :arriving_flights, foreign_key: "arrival_id", class_name: 'Flight', inverse_of: :arrival
    has_many :departing_flights, foreign_key: "departure_id", class_name: 'Flight', inverse_of: :departure

    validates :name, presence: true

    validates :code, presence: true

    validates :location, presence: true

    validates :countryCode, presence: true

    validates :countryName, presence: true
end
