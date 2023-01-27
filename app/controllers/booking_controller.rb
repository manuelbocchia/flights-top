class BookingController < ApplicationController

    def new
        @booking = Booking.new
        @pass_no = person_params[:passengers].to_i
        @flight = person_params[:choice]
        @new_user = @booking.users.build
    end

    def create
        @booking = Booking.new(flight_id:person_params[:choice],passenger_no:[:passengers])
        @pass_no = person_params[:passengers].to_i
        @flight = person_params[:choice]
        @new_user = @booking.users.build(user:person_params[:user], email:person_params[:email])
        if @booking.save
            redirect_to "root_path"
            flash.notice("Successful booking!")
        else
            render 'new'
        end
    end


  private
  # Using a private method to encapsulate the permissible parameters is
  # a good pattern since you'll be able to reuse the same permit
  # list between create and update. Also, you can specialize this method
  # with per-user checking of permissible attributes.
  def person_params
    params.permit(:passengers, :choice, :commit, users_attributes:[:user, :email])
  end

end