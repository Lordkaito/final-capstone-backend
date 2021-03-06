class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  def index
    @user_name = params[:username]

    @reservations = if @user_name
                      Reservation.includes(:car).where(username: @user_name)
                    else
                      Reservation.all
                    end
    render json: @reservations
  end

  def show
    return reservation_not_found unless @reservation

    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)

    return render json: @reservation.errors, status: :unprocessable_entity unless @reservation.save

    render json: @reservation, status: :created
  end

  def update
    if @reservation.update(reservation_params)
      render json: { message: 'Reservation Update Successful' }
    else
      render json: @reservation.errors,
             status: :unprocessable_entity
    end
  end

  def destroy
    if @reservation.destroy
      render json: { message: 'Reservation deleted' }
    else
      render json: { error: 'Reservation could not be deleted' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.includes(:car).find_by(id: params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:username, :car_id, :reservation_date, :city, :to_date)
  end

  def reservation_not_found
    render json: { error: 'Reservation not found' }, status: :not_found
  end
end
