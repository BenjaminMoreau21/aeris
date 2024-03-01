class ReviewsController < ApplicationController
  def create
    @booking = Booking.new
    @review = Review.new(review_params)
    @car = Car.find(params[:car_id])
    @review.car = @car
    @review.user = current_user
    @current_bookings = Booking.where(car: @car, user: current_user)
    @current_reviews = Review.where(car: @car, user: current_user)
    @avg_rating = ((@car.reviews.map(&:rating).sum).to_f/@car.reviews.length).floor(2)
    @ratings = @car.reviews.map(&:rating)
    @five = (@ratings.count(5).to_f / @ratings.size) * 100
    @four = (@ratings.count(4).to_f / @ratings.size) * 100
    @three = (@ratings.count(3).to_f / @ratings.size) * 100
    @two = (@ratings.count(2).to_f / @ratings.size) * 100
    @one = (@ratings.count(1).to_f / @ratings.size) * 100
    if @review.save
      redirect_to car_path(@car)
    else
      render "cars/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
