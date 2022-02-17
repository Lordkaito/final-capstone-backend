class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    respond_to do |format|
      format.json { render json: @cars }
    end
  end
end
