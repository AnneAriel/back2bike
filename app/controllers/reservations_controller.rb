class ReservationsController < ApplicationController
  before_action :set_bike, only: %i[new create show destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.bike = @bike
    @reservation.user = current_user
    if @reservation.save
      redirect_to bike_path(@bike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(@bike, current_user)
  end

  # def edit
  # end

  # def update
  # end

  def destroy
    @reservation = Reservation.find(@bike, current_user)
    @reservation.destroy
    redirect_to bikes_path
  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :price)
  end

end
