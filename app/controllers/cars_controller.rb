class CarsController < ApplicationController
  # before_action :authenticate_user!, :except => [:index, :show]
  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def index
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

  private

  def car_params
    params.require(:car).permit(:brand, :model, :price_per_day, :address, :description, :km, :year, :seats, :carburant, :doors, :power, :photo)
  end
end
