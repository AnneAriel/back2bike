class BikesController < ApplicationController

  def index
    @bikes = Bike.all
    @bikes = policy_scope(Bike)

  end

  def show
    @bike = Bike.find(params[:id])
    authorize @bike
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    @bike.save
    redirect_to bike_path(@bike)
    authorize @bike
  end

  def destroy
    @bike = Bike.find(params[:id])
    authorize @bike
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:description, :address, :category, :daily_price, :photo)
  end

end
