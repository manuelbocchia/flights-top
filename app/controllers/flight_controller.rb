class FlightController < ApplicationController

    def index
        @departure_options = Flight.all.map{ |f| [ f.departure.name, f.departure.id ] }
        @arrival_options = Flight.all.map{ |f| [ f.arrival.name, f.arrival.id ] }
        @date_options = Flight.all.map{ |f| [f.date.strftime("%d/%m/%Y"), f.date]}
        @flights = Flight.all
        @search = Flight.find_by_sql ["SELECT * FROM flights WHERE arrival_id = ? AND departure_id = ?", params[:arrival], params[:departure]]
    end

end