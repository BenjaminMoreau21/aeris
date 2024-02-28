class CarsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def yours
    @cars = Car.where(user: current_user)
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :price_per_day, :address, :description, :km, :year, :seats, :carburant, :doors, :power, :photo)
  end
end
