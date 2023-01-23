class AirportController < ApplicationController

    def new
        @airport = Airport.new 
    end

    def create
        if @airport.save
            puts 'New airport created!'
        else
            redirect 'root_path'
        end
    end

end