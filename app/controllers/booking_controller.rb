class BookingController < ApplicationController

    def new
        @booking = Booking.create(flight_id:params[:choice],passenger_no:[:passengers])
        pass_no = params[:passengers]
        flight = params[:choice]
    end

end