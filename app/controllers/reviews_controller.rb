class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @car = Car.find(params[:car_id])
    @review.car = @car
    @review.user = current_user
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