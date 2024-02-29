class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @cars = Car.all
    if params[:query].present?
      sql_subquery = "model ILIKE :query OR brand ILIKE :query"
      @cars = @cars.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    @booking = Booking.new
    @ratings = @car.reviews.map(&:rating)
    @five = (@ratings.count(5).to_f / @ratings.size) * 100
    @four = (@ratings.count(4).to_f / @ratings.size) * 100
    @three = (@ratings.count(3).to_f / @ratings.size) * 100
    @two = (@ratings.count(2).to_f / @ratings.size) * 100
    @one = (@ratings.count(1).to_f / @ratings.size) * 100
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

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to root_path(@car)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to root_path
  end

  def yours
    @cars = Car.where(user: current_user)
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :price_per_day, :address, :description, :km,
                                :year, :seats, :carburant, :doors, :power, photos: [])
  end
end
