class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /reservations
  def index
    @reservations = Reservation.all

    render json: @reservations
  end

  # GET /reservations/1
  def show
    @reservation = Reservation.find_by(id: params[:id])
    return reservation_not_found unless @reservation.present?

    render json: @reservation
  end

  # POST /reservations
  def create
    @reservation = Reservation.create!(reservation_params)

    # render json: @reservation

    return missing_params unless @reservation.is_valid?

    render json: @reservation
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find_by(id: params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:username, :car_id)
  end

  def reservation_not_found
    render json: { error: 'Reservation not found' }, status: :not_found
  end

  def missing_params
    render json: { error: 'Invalid user' }, status: :unprocessable_entity
  end
end
