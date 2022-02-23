class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /reservations
  def index
    params.require(:reservation).permit(:username)
    @user_name = params[:username]

    if @user_name
      @reservations = Reservation.includes(:car).where(username: @user_name)
      render json: @reservations
    else
      render json: @reservations.errors
    end
  end

  # GET /reservations/1
  def show
    return render json: { error: 'Not found' } unless @reservation

    render json: @reservation
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
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
    @reservation = Reservation.includes(:car).find_by(id: params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:username, :car_id, :reservation_date, :city)
  end
end
