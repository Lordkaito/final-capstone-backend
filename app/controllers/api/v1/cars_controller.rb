class Api::V1::CarsController < ApplicationController
  before_action :set_car, only: %i[show update destroy]

  def index
    @cars = Car.all

    render json: @cars
  end

  def show
    return car_not_found unless @car

    render json: @car
  end

  def create
    @car = Car.new(car_params)

    return render json: @car.errors, status: :unprocessable_entity unless @car.save

    render json: @car, status: :created, location: @car
  end

  def update
    return render json: @car.errors, status: :unprocessable_entity unless @car.update(car_params)
  end

  def destroy
    @car.destroy
  end

  private

  def set_car
    @car = Car.find_by(id: params[:id])
  end

  def car_params
    params.require(:car).permit(:price, :brand, :model, :image)
  end

  def car_not_found
    render json: { error: 'Car not found' }, status: :not_found
  end
end
