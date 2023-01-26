class BookingController < ApplicationController

    def new
        @booking = Booking.new
        pass_no = params[:passengers]
        flight = params[:choice]
    end

end