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
    @bike.save
    authorize @bike
  end

  def destroy
    authorize @bike
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_path, status: :see_other
  end

  private

  def bike_params
    params.require(:bike).permit(:description, :localisation, :category, :daily_price)
  end

end
