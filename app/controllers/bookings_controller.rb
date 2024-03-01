class BookingsController < ApplicationController
  def create
    @review = Review.new
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path, notice: "Booking successful"
    else
      render "cars/show", status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
