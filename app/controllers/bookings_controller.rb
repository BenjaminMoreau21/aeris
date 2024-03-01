class BookingsController < ApplicationController
  def create
    @review = Review.new
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    @current_bookings = Booking.where(car: @car, user: current_user)
    @current_reviews = Review.where(car: @car, user: current_user)
    @avg_rating = ((@car.reviews.map(&:rating).sum).to_f/@car.reviews.length).floor(2)
    @ratings = @car.reviews.map(&:rating)
    @five = (@ratings.count(5).to_f / @ratings.size) * 100
    @four = (@ratings.count(4).to_f / @ratings.size) * 100
    @three = (@ratings.count(3).to_f / @ratings.size) * 100
    @two = (@ratings.count(2).to_f / @ratings.size) * 100
    @one = (@ratings.count(1).to_f / @ratings.size) * 100
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
