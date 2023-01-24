class Flight < ApplicationRecord
    belongs_to :arrival, class_name: 'Airport'
    belongs_to :departure, class_name: 'Airport'

    def arrival_name
        "#{arrival.name}"
    end

    def departure_name
        "#{departure.name}"
    end

end
