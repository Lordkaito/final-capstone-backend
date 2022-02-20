class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    return car_not_found unless @car = Car.find_by(id: params[:id])

    render json: @car
  end

  def create
    @car = Car.create!(car_params)

    render json: @car
  end

  private

  def car_params
    params.require(:car).permit(:price, :brand, :model, :image)
  end

  def car_not_found
    render json: { message: 'Car not found' }, status: :not_found
  end

end
