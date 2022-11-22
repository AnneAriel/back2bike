class ReservationsController < ApplicationController
  before_action :set_bike, only: %i[new create show destroy]

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.bike = @bike
    @reservation.user = current_user
    authorize @reservation
    if @reservation.save
      redirect_to bike_reservation_path(@bike, @reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(@bike, current_user)
    authorize @reservation
  end


  def index
    @reservation = Reservation.all
    @reservation = policy_scope(Reservation)
  end

  # def edit
  # end

  # def update
  # end

  def destroy
    @reservation = Reservation.find(@bike, current_user)
    @reservation.destroy
    redirect_to bikes_path
    authorize @reservation
  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :bike_id, :user_id)
  end
end
