class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find_by(id: params[:id])
    return car_not_found unless @car.present?

    render json: @car
  end

  def create
    @car = Car.create!(car_params)

    return missing_params unless @car.is_valid?

    render json: @car
    # rescue
    #   error(:unprocessable_entity, 'Invalid car', 'Please fill all the required parameters.')
  end

  private

  def car_params
    params.require(:car).permit(:price, :brand, :model, :image)
  end

  def car_not_found
    render json: { error: 'Car not found' }, status: :not_found
  end

  def missing_params
    render json: { error: 'Please fill all the required parameters.' }, status: :unprocessable_entity
  end
end
