class ReservationsController < ApplicationController
  before_action :set_bike, only: %i[new create show ]

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.bike = @bike
    @reservation.user = current_user
    authorize @reservation
    @reservation.price = ((@reservation.end_date - @reservation.start_date) * @reservation.bike.daily_price).to_i
    if @reservation.save
      redirect_to bike_reservation_path(@bike, @reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end


  def index
    #@reservations = Reservation.all
    #@user = current_user
    #@user_reservation = @user.reservations
    @user_reservation = policy_scope(Reservation)
  end

  # def edit
  # end

  # def update
  # end

  def destroy
     @reservation = Reservation.find(params[:id])
     authorize @reservation
    @reservation.destroy
    redirect_to reservations_path, status: :see_other

  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :bike_id, :user_id)
  end




end
