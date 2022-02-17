class Api::V1::CarsController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: { 'Hello world' } }
    end
  end
end
